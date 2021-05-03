module mppcInput (
    input analogIn,
    input booted,
    output digitalOut,
    output [11:0] counter
);

reg [11:0] counter;
    
// Use hardmacro block for pin initializtion
SB_IO #(
    .PIN_TYPE(6'b 1010_01),
    .PULLUP(1'b 0)
) Channel0(
    .PACKAGE_PIN(analogIn),
    .OUTPUT_ENABLE(booted),
    .D_OUT_0(1'b0),
    .D_IN_0(digitalOut)
);

always @(posedge digitalOut)
    counter = counter + 1;

endmodule