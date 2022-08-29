module top_module(
    input a,
    input b,
    input c,
    output out  ); 
    
    assign out = ~(~a & ~b & ~c);
    // assign out = (a | b | c);

endmodule
