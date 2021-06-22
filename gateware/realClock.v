module realClock (
    input CLK,
    output ms,
    output sec,
    output min,
    output minPul,
);

reg [12:0] timer0;     // At 9.6Mhz, 1ms is 9600 cycles, fits in 2^13
reg [9:0] timer1;      // At 1.0Khz, 1s  is 1000 cycles, fits in 2^10
reg [5:0] timer2;      // At 1   hz, 1m  is 60   cylces, fits in 2^6
reg minute;            // Single bit minute info
reg minutePulse;       // Single bit minute info

// Count up in ms
always @(posedge CLK)
begin
    if (timer0 < 4799) begin
        timer0 = timer0 + 1;
        minutePulse = 0;
    end else begin
        timer0 = 0;
        if (timer1 < 999) begin
            timer1 = timer1 + 1;
        end else begin
            timer1 = 0;
            if (timer2 < 59) begin
                timer2 = timer2 + 1;
                minutePulse = 1;
            end else begin
                timer2 = 0;
                minute = !minute;
            end
        end
    end
end


assign ms     = timer1[0];
assign sec    = timer2[0];
assign min    = minute;
assign minPul = minutePulse;

endmodule