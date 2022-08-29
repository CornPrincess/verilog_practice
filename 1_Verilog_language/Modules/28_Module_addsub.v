module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);

    wire [31:0] c;
    wire w1;
    wire w2;
    assign c = {32{sub}} ^ b;
    add16 instance1(.a(a[15:0]),
                    .b(c[15:0]),
                    .cin(sub),
                    .sum(sum[15:0]),
                    .cout(w1));
    add16 instance2(.a(a[31:16]),
                    .b(c[31:16]),
                    .cin(w1),
                    .sum(sum[31:16]),
                    .cout(w2));
    
endmodule
