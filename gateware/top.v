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
      

    reg [32:0] bootTimer = 0;
    reg [9:0] ch0Counter = 0;
    reg [9:0] ch1Counter = 0;
    reg [9:0] ch2Counter = 0;
    reg [9:0] ch3Counter = 0;
    reg [9:0] ch4Counter = 0;
    reg [9:0] ch5Counter = 0;
    reg [9:0] ch6Counter = 0;
    reg [9:0] ch7Counter = 0;

    wire CH0_R;
    wire CH1_R;
    wire CH2_R;
    wire CH3_R;
    wire CH4_R;
    wire CH5_R;
    wire CH6_R;
    wire CH7_R;


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
        .analogIn  (CH0),
        .booted    (booted),
        .digitalOut (CH0_R),
    );

    SB_IO #(
        .PIN_TYPE(6'b 1010_01),
        .PULLUP(1'b 0)
    ) Channel1(
        .PACKAGE_PIN(CH1),
        .OUTPUT_ENABLE(booted),
        .D_OUT_0(1'b0),
        .D_IN_0(CH1_R)
    );

    SB_IO #(
        .PIN_TYPE(6'b 1010_01),
        .PULLUP(1'b 0)
    ) Channel2(
        .PACKAGE_PIN(CH2),
        .OUTPUT_ENABLE(booted),
        .D_OUT_0(1'b0),
        .D_IN_0(CH2_R)
    );

    SB_IO #(
        .PIN_TYPE(6'b 1010_01),
        .PULLUP(1'b 0)
    ) Channel3(
        .PACKAGE_PIN(CH3),
        .OUTPUT_ENABLE(booted),
        .D_OUT_0(1'b0),
        .D_IN_0(CH3_R)
    );

    SB_IO #(
        .PIN_TYPE(6'b 1010_01),
        .PULLUP(1'b 0)
    ) Channel4(
        .PACKAGE_PIN(CH4),
        .OUTPUT_ENABLE(booted),
        .D_OUT_0(1'b0),
        .D_IN_0(CH4_R)
    );

    SB_IO #(
        .PIN_TYPE(6'b 1010_01),
        .PULLUP(1'b 0)
    ) Channel5(
        .PACKAGE_PIN(CH5),
        .OUTPUT_ENABLE(booted),
        .D_OUT_0(1'b0),
        .D_IN_0(CH5_R)
    );

    SB_IO #(
        .PIN_TYPE(6'b 1010_01),
        .PULLUP(1'b 0)
    ) Channel6(
        .PACKAGE_PIN(CH6),
        .OUTPUT_ENABLE(booted),
        .D_OUT_0(1'b0),
        .D_IN_0(CH6_R)
    );

    SB_IO #(
        .PIN_TYPE(6'b 1010_01),
        .PULLUP(1'b 0)
    ) Channel7(
        .PACKAGE_PIN(CH7),
        .OUTPUT_ENABLE(booted),
        .D_OUT_0(1'b0),
        .D_IN_0(CH7_R)
    );

    always @(posedge CH0_R)
        ch0Counter = ch0Counter + 1;

    always @(posedge CH1_R)
        ch1Counter = ch1Counter + 1;

    always @(posedge CH2_R)
        ch2Counter = ch2Counter + 1;

    always @(posedge CH3_R)
        ch3Counter = ch3Counter + 1;

    always @(posedge CH4_R)
        ch4Counter = ch4Counter + 1;

    always @(posedge CH5_R)
        ch5Counter = ch5Counter + 1;

    always @(posedge CH6_R)
        ch6Counter = ch6Counter + 1;

    always @(posedge CH7_R)
        ch7Counter = ch7Counter + 1;

    assign gpio17 = CH0_R;
    assign gpio18 = CH1_R;
    assign gpio27 = CH0_R && CH1_R;
    assign LED0 = bootTimer[24];
    assign LED1 = bootTimer[23];
    assign LED2 = bootTimer[22];
    // assign gpioSDI  = CH0 && CH2;
    // assign gpioSCK  = CH0 && CH1 && CH2;
    // assign gpioSS   = CH3 && CH4;
    // assign gpio01   = CH0 && CH1 && CH2 && CH3 && CH4;

endmodule

