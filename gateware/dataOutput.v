module dataOutput (
    input clk,
    input [7:0] data,
    output dataOut,
);

reg[3:0] currentBit;

always @(posedge clk)
    currentBit = currentBit + 1;

assign dataOut = data[currentBit];

endmodule