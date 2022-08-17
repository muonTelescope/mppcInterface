module uart(
   output uart_busy,         // High means UART is transmitting
   output uart_tx,           // UART transmit wire
   input uart_wr_i,          // Raise to transmit byte
   input [7:0] uart_dat_i,   // 8-bit data
   input sys_clk_i,          // System clock, 9.6 MHz
   input sys_rst_i           // System reset
);

  reg [3:0] bitcount;
  reg [8:0] shifter;
  reg uart_tx;

  wire uart_busy = |bitcount[3:1];
  wire sending = |bitcount;

  // sys_clk_i is 9.6MHz.  We want a 115200Hz clock

  reg [28:0] d;
  wire [28:0] dInc = d[28] ? (115200) : (115200 - 9600000);
  wire [28:0] dNxt = d + dInc;
  always @(posedge sys_clk_i)
  begin
    d = dNxt;
  end
  wire ser_clk = ~d[28]; // this is the 115200 Hz clock

  always @(posedge sys_clk_i)
  begin
    if (sys_rst_i) begin
      uart_tx <= 1;
      bitcount <= 0;
      shifter <= 0;
    end else begin
      // just got a new byte
      if (uart_wr_i & ~uart_busy) begin
        shifter <= { uart_dat_i[7:0], 1'h0 };
        bitcount <= (1 + 8 + 2);
      end

      if (sending & ser_clk) begin
        { shifter, uart_tx } <= { 1'h1, shifter };
        bitcount <= bitcount - 1;
      end
    end
  end

endmodule