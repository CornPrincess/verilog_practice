`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
	wire w1;
    assign w1 = (a & b) | (c & d);
    assign out = w1;
    assign out_n = ~w1;
endmodule
