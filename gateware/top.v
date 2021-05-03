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
    mppcInput CHANNEL1(
        .analogIn  (CH1),
        .booted    (booted),
        .digitalOut (CH1_R),
    );
    mppcInput CHANNEL2(
        .analogIn  (CH2),
        .booted    (booted),
        .digitalOut (CH2_R),
    );
    mppcInput CHANNEL3(
        .analogIn  (CH3),
        .booted    (booted),
        .digitalOut (CH3_R),
    );
    mppcInput CHANNEL4(
        .analogIn  (CH4),
        .booted    (booted),
        .digitalOut (CH4_R),
    );
    mppcInput CHANNEL5(
        .analogIn  (CH5),
        .booted    (booted),
        .digitalOut (CH5_R),
    );
    mppcInput CHANNEL6(
        .analogIn  (CH6),
        .booted    (booted),
        .digitalOut (CH6_R),
    );
    mppcInput CHANNEL7(
        .analogIn  (CH7),
        .booted    (booted),
        .digitalOut (CH7_R),
    );

    dataOutput UART(
        .clk     (clk),
        .data    (8'b 1010_1010),
        .dataOut (gpio17),
    );
    

    // assign gpio17 = CH0_R;
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

