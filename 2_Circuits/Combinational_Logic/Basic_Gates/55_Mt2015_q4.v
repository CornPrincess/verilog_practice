module top_module (input x, input y, output z);
	wire w1;
    wire w2;
    wire w3;
    wire w4;
    
    A a1(x, y, w1);
    A a2(x, y, w3);
    B b1(x, y, w2);
    B b2(x, y, w4);
    
    assign z = (w1 | w2) ^ (w3 & w4);
    
endmodule

module A(input x, input y, output z);
    assign z = (x ^ y) & x;
endmodule

module B(input x, input y, output z);
        assign z = x  == y;
endmodule
