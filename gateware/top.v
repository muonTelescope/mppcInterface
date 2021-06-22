// Detect coincidence between channels
/* module */
module top (    
    input CH0,
    input CH1,
    input CH2,
    input CH3,
    input CH4,
    input CH5,
    input CH6,
    input CH7,
    input CLK,  
    output gpioSDO,
    output gpioSDI,
    output gpioSCK,
    output LED0,
    output LED1,
    output LED2,
    output gpioSS,
    output gpio27,  
    output gpio23,  
    output gpio18,  
    output gpio17,
        );

    wire CH0_R;
    wire CH1_R;
    wire CH2_R;
    wire CH3_R;
    reg [7:0] eventCount [7:0];
    reg [3:0] eventSel;

    // Just after boot, the inputs need to be pulled low
    // to discharge the capacitors on thier output
    reg [16:0] bootTimeout = 0;
    reg booted = 0;
    always @(posedge CLK) begin
        if(!booted) begin
            if(bootTimeout[16]) begin
                // Run once
                // Set all channels as inputs
                booted = 1;
            end else begin
                // Else set as output pulled down
                // Increment
                bootTimeout <= bootTimeout + 1;       
            end
        end
    end

    // CLK is at 9.6Mhz set in FPGA binary upload code
    always @(posedge CLK)
        bootTimer = bootTimer + 1;

    mppcInput CHANNEL0(
        .analogIn   (CH0),
        .booted     (booted),
        .digitalOut (CH0_R),
        .counter    (eventCount[0]),
    );
    mppcInput CHANNEL1(
        .analogIn  (CH1),
        .booted    (booted),
        .digitalOut (CH1_R),
        .counter    (eventCount[1]),
    );
    mppcInput CHANNEL2(
        .analogIn  (CH2),
        .booted    (booted),
        .digitalOut (CH2_R),
        .counter    (eventCount[2]),
    );
    mppcInput CHANNEL3(
        .analogIn  (CH3),
        .booted    (booted),
        .digitalOut (CH3_R),
        .counter    (eventCount[3]),
    );

    wire minPul;
    realClock real0(
        .CLK    (CLK),
        .minPul (minPul),
    );

    reg uartBusy;
    wire [7:0] data;
    wire retransmit;
    uart UART0(
        .uart_busy    (uartBusy), 
        .uart_tx      (gpio17),   
        .uart_wr_i    (minPul | retransmit),
        .uart_dat_i   (data),
        .sys_clk_i    (CLK), 
        .sys_rst_i    (!booted),  
    );

    always @(negedge uartBusy) begin
        if(eventSel == 7) begin
            retransmit = 0;
            eventSel = 0;    
            eventCount[4] <= eventCount[4] + 1;
        end else begin
            data = eventCount[eventSel];
            eventSel <= eventSel + 1;
            retransmit = 1; 
        end
    end

    // wire CH01;
    // assign CH01 = CH0_R && CH1_R;
    // always @(posedge CH01) begin
    //     eventCount[4] = eventCount[4] + 1;
    // end
    // assign LED0 = bootTimeout[10];
    // assign LED1 = bootTimeout[10];
    // assign LED2 = bootTimeout[10];
    // assign gpioSDI  = CH0 && CH2;
    // assign gpioSCK  = CH0 && CH1 && CH2;
    // assign gpioSS   = CH3 && CH4;
    // assign gpio01   = CH0 && CH1 && CH2 && CH3 && CH4;

endmodule

