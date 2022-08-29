module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);

    wire [2:0] w;
    assign w = {x3, x2, x1};
    
    always @(*) begin
        case (w)
            2,3,5,7: f = 1;
            0,1,4,6: f = 0;
            default: f = 0;
        endcase
    end

    // This truth table has four minterms. 
    //assign f = ( ~x3 & x2 & ~x1 ) | 
    //            ( ~x3 & x2 & x1 ) |
    //            ( x3 & ~x2 & x1 ) |
    //            ( x3 & x2 & x1 ) ;
                
    // It can be simplified, by boolean algebra or Karnaugh maps.
    // assign f = (~x3 & x2) | (x3 & x1);
    
    // You may then notice that this is actually a 2-to-1 mux, selected by x3:
    // assign f = x3 ? x1 : x2;
endmodule
