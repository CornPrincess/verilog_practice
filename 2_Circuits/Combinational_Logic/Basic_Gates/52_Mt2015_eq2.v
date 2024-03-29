module top_module ( input [1:0] A, input [1:0] B, output z ); 
    //always @(*) begin
    //    if (A == B)
    //        z = 1;
    //    else 
    //        z = 0
    //end

    assign z = (A[1:0] == B[1:0]);

    // Another option is to use a 16-entry truth table ( {A,B} is 4 bits, with 16 combinations ).
    // There are 4 rows with a 1 result.  0000, 0101, 1010, and 1111.
    // assign z = (~A[1] & ~A[0] & ~B[1] & ~B[0])|
    //       (~A[1] & A[0] & ~B[1] & B[0])|
    //       (A[1] & ~A[0] & B[1] & ~B[0])|
    //       (A[1] & A[0] & B[1] & B[0]);
endmodule
