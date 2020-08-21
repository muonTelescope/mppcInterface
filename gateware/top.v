// Detect coincidence between channels
/* module */
module top (CH0, 
            CH1, 
            CH2, 
            CH3, 
            CH4, 
            CH5, 
            CH6, 
            CH7, 
            LED0,
            LED1,
            LED2,
            // gpioSDO, 
            // gpioSDI, 
            // gpioSCK, 
            gpioSS, 
            gpio27,
            gpio23,
            gpio18,
            gpio17,
            CLK
        );
    
    input CH0;
    input CH1;
    input CH2;
    input CH3;
    input CH4;
    input CH5;
    input CH6;
    input CH7;
    input CLK;  

    // output gpioSDO;
    // output gpioSDI;
    // output gpioSCK;
    output LED0;
    output LED1;
    output LED2;
    output gpioSS;
    output gpio27;  
    output gpio23;  
    output gpio18;  
    output gpio17;  

    reg [32:0] counterCh0 = 0;

    wire CH0_R;
    wire CH1_R;


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

    always @(posedge CLK)
        counterCh0 = counterCh0 + 1;

    SB_IO #(
        .PIN_TYPE(6'b 1010_01),
        .PULLUP(1'b 0)
    ) Channel0(
        .PACKAGE_PIN(CH0),
        .OUTPUT_ENABLE(booted),
        .D_OUT_0(1'b0),
        .D_IN_0(CH0_R)
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


    assign gpio17 = CH0_R;
    assign gpio18 = CH1_R;
    assign gpio27 = CH0_R && CH1_R;
    assign LED0 = counterCh0[24];
    assign LED1 = counterCh0[23];
    assign LED2 = counterCh0[22];
    // assign gpioSDI  = CH0 && CH2;
    // assign gpioSCK  = CH0 && CH1 && CH2;
    // assign gpioSS   = CH3 && CH4;
    // assign gpio01   = CH0 && CH1 && CH2 && CH3 && CH4;

endmodule

