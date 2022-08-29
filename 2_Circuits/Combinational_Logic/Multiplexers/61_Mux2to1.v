module top_module( 
    input a, b, sel,
    output out ); 

    assign out = sel ? b : a;

    // Mux expressed as AND and OR
    // assign out = (sel & b) | (~sel & a);    
endmodule
