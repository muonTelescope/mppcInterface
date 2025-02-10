//=======================================================================
// Top-level Module
//=======================================================================
module top (    
    input  CH0,
    input  CH1,
    input  CH2,
    input  CH3,
    input  CH4,
    input  CH5,
    input  CH6,
    input  CH7,
    input  CLK,  
    input  gpioSDO,
    input  gpioSDI,
    input  gpioSCK,
    input  gpioSS,
    output LED0,
    output LED1,
    output LED2,
    output gpio27,  
    output gpio23,
    output gpio18,  
    output gpio17      // UART TX output
);

    //-------------------------------------------------------------------------
    // Internal signals and registers
    //-------------------------------------------------------------------------
    // Define channel outputs and 16-bit counters for each channel.
    wire CH0_R;
    wire CH1_R;
    wire CH2_R;
    wire CH3_R;
    reg  [7:0] eventCount [7:0];  // Using 8 bits per counter, 8 counters

    // After boot the inputs should float (or be driven externally).
    reg [16:0] bootTimeout = 0;
    reg        booted      = 0;
    
    // Boot logic: wait until bootTimeout[16] becomes high.
    always @(posedge CLK) begin
        if (!booted) begin
            if (bootTimeout[16])
                booted <= 1;
            else
                bootTimeout <= bootTimeout + 1;
        end
    end

    //-------------------------------------------------------------------------
    // Instantiate mppcInput modules for several channels
    //-------------------------------------------------------------------------
    mppcInput CHANNEL0 (
        .analogIn   (CH0),
        .booted     (booted),
        .digitalOut (CH0_R)
    );
    
    mppcInput CHANNEL1 (
        .analogIn   (CH1),
        .booted     (booted),
        .digitalOut (CH1_R)
    );
    
    mppcInput CHANNEL2 (
        .analogIn   (CH2),
        .booted     (booted),
        .digitalOut (CH2_R)
    );

    mppcInput CHANNEL3 (
        .analogIn   (CH3),
        .booted     (booted),
        .digitalOut (CH3_R)
    );
    
    //-------------------------------------------------------------------------
    // UART Transmit Signals and Burst Mode Transmitter
    //-------------------------------------------------------------------------
    wire uart_tx_out;
    wire uart_tx_busy;
    reg  uart_send = 0;
    reg  [7:0] uart_data = 8'd0;
    
    // Parameters for burst mode.
    // Adjust ONE_SEC to your clock frequency; for example, 500k 5khz clock.
    parameter ONE_SEC     = 32'd500000;
    parameter TOTAL_BYTES = 8; // 8 counters x 1 byte per counter = 8 bytes

    // Internal state registers for burst mode.
    reg [31:0] idle_timer = 0; // Counts clock cycles in IDLE state.
    reg [3:0]  byte_index = 0; // 0 to 7: which byte of eventCount to send.
    reg [1:0]  state = 0;      // State machine variable.

    localparam IDLE  = 2'd0;
    localparam BURST = 2'd1;
    localparam WAIT  = 2'd2;

    // Burst mode state machine: once per ONE_SEC, send all bytes in eventCount.
    always @(posedge CLK) begin
        if (!booted) begin
            idle_timer <= 0;
            state <= IDLE;
            byte_index <= 0;
            uart_send <= 0;
            uart_data <= 8'h00;
        end else begin
            case (state)
                IDLE: begin
                    // Count until ONE_SEC has elapsed.
                    if (idle_timer < ONE_SEC - 1) begin
                        idle_timer <= idle_timer + 1;
                        uart_send <= 0;
                    end else begin
                        idle_timer <= 0;
                        byte_index <= 0;
                        state <= BURST;
                    end
                end
                BURST: begin
                    // When UART is free, load the next byte.
                    if (!uart_tx_busy) begin
                        uart_send <= 1;  // Assert a one-cycle pulse.
                        case (byte_index)
                            3'd0:  uart_data <= eventCount[0];
                            3'd1:  uart_data <= eventCount[1];
                            3'd2:  uart_data <= eventCount[2];
                            3'd3:  uart_data <= eventCount[3];
                            3'd4:  uart_data <= eventCount[4];
                            3'd5: uart_data <= eventCount[5];
                            3'd6: uart_data <= eventCount[6];
                            3'd7: uart_data <= eventCount[7];
                            default: uart_data <= 8'h00;
                        endcase
                        state <= WAIT;
                    end else begin
                        uart_send <= 0;
                    end
                end
                WAIT: begin
                    uart_send <= 0;  // Ensure pulse is only one clock cycle.
                    // Wait until UART is done transmitting the current byte.
                    if (!uart_tx_busy) begin
                        if (byte_index == TOTAL_BYTES - 1) begin
                            // After all bytes are sent, reset eventCounts to 0
                            eventCount[0] <= eventCount[0] + 1;
                            // eventCount[1] <= 0;
                            // eventCount[2] <= 0;
                            // eventCount[3] <= 0;
                            // eventCount[4] <= 0;
                            // eventCount[5] <= 0;
                            eventCount[6] <= 0;
                            eventCount[7] <= 0;

                            state <= IDLE; // Burst finished; return to waiting one second.
                        end else begin
                            byte_index <= byte_index + 1;
                            state <= BURST;
                        end
                    end
                end
                default: state <= IDLE;
            endcase
        end
    end

    // Instantiate the UART transmitter.
    // 52 CLOCKS_PER_BIT for a 500 kHz, ~9615 baud (9600 baud)
    uart_tx #(
        .CLOCKS_PER_BIT(52)
    ) uart_transmitter (
        .clk   (CLK),
        .reset (~booted),  // Keep UART in reset until booted.
        .send  (uart_send),
        .data  (uart_data),
        .tx    (uart_tx_out),
        .busy  (uart_tx_busy)
    );

    // Connect the UART TX output to gpio17.
    assign gpio17 = uart_tx_out;

        //-------------------------------------------------------------------------
    // Simple LED and GPIO outputs
    //-------------------------------------------------------------------------
    assign LED0 = eventCount[1][0];
    assign LED1 = eventCount[1][1];
    assign LED2 = eventCount[1][2];

    // Example GPIO logic based on channel outputs.
    assign gpio23 = CH0_R;
    assign gpio27 = CH1_R;
    assign gpio18 = CH2_R;

    wire C01 = CH0_R && CH1_R;
    wire C02 = CH0_R && CH2_R;
    wire C12 = CH1_R && CH2_R;
    wire C012 = CH0_R && CH1_R && CH2_R;

    always @(posedge CH0_R)
        eventCount[1] <= eventCount[1] + 1;
    // always @(posedge CH1_R)
    //     eventCount[2] <= eventCount[2] + 1;
    // always @(posedge CH2_R)
    //     eventCount[3] <= eventCount[3] + 1;
    always @(posedge C01)
        eventCount[2] <= eventCount[2] + 1;
    always @(posedge C02)
        eventCount[3] <= eventCount[3] + 1;
    always @(posedge C12)
        eventCount[4] <= eventCount[4] + 1;
    always @(posedge C012)
        eventCount[5] <= eventCount[5] + 1;

endmodule



//=======================================================================
// UART Transmit-only Module
//=======================================================================
module uart_tx #(
    parameter CLOCKS_PER_BIT = 1000  // Set for 9.6MHz clock/9600 baud
)(
    input        clk,
    input        reset,
    input        send,         // One-clock pulse to initiate transmission.
    input  [7:0] data,         // Data byte to transmit.
    output reg   tx,           // UART transmit output.
    output reg   busy          // High while transmission is in progress.
);
    // We transmit a start bit, eight data bits (LSB first), and one stop bit.
    reg [9:0] shift_reg;       // Holds the 10 bits to transmit.
    reg [3:0] bit_index;       // Current bit index (0 to 9).
    reg [15:0] clock_count;    // Counts clock cycles for each bit period.

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            busy        <= 0;
            tx          <= 1;  // Idle line is high.
            clock_count <= 0;
            bit_index   <= 0;
            shift_reg   <= 10'b1111111111;
        end else begin
            if (busy) begin
                // During transmission, count clock cycles for the current bit.
                if (clock_count < CLOCKS_PER_BIT - 1)
                    clock_count <= clock_count + 1;
                else begin
                    clock_count <= 0;
                    if (bit_index < 9) begin
                        bit_index <= bit_index + 1;
                        // Right-shift the register; fill with '1' so stop bit stays high.
                        shift_reg <= {1'b1, shift_reg[9:1]};
                    end else begin
                        // Transmission complete.
                        busy      <= 0;
                        bit_index <= 0;
                    end
                end
                tx <= shift_reg[0];  // Transmit the least-significant bit.
            end else begin
                // If not busy, check for a send pulse.
                if (send) begin
                    busy        <= 1;
                    // Load the shift register with: {stop bit, data[7:0], start bit}
                    // LSB (bit 0) is the start bit (0), bits 1-8 are data, and bit 9 is the stop bit (1).
                    shift_reg   <= {1'b1, data, 1'b0};
                    bit_index   <= 0;
                    clock_count <= 0;
                    tx          <= 0;  // Start bit.
                end else begin
                    tx <= 1;  // Idle state.
                end
            end
        end
    end
endmodule

//=======================================================================
// mppcInput Module
//=======================================================================
// This module uses an ICE40 hard macro (SB_IO) for I/O pin initialization.
// It samples the input pin, and on each rising edge of the sampled signal,
// increments a 16-bit counter.
module mppcInput (
    input  analogIn,
    input  booted,
    output digitalOut
);
    // Use the SB_IO primitive for pin initialization.
    SB_IO #(
        .PIN_TYPE(6'b1010_01),
        .PULLUP(1'b0)
    ) Channel (
        .PACKAGE_PIN(analogIn),
        .OUTPUT_ENABLE(booted),
        .D_OUT_0(1'b0),
        .D_IN_0(digitalOut)
    );

endmodule
