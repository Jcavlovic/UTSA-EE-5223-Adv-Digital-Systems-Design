`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UTSA
// Engineer: Jordan Cavlovic
// 
// Create Date: 08/24/2026 03:57:56 PM
// Design Name: 
// Module Name: hw_1_5
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module in1(
    input a, b , c,
    output y
    );
    
    assign y = (a & b & c) | (~a & ~b & c) | (a & ~b & c);
    
endmodule

module in2(
    input w, q,
    output x
    );
    
    assign x = (q & w) | (~q & w) | ~w;
    
endmodule

 module hw_1_5(
    output out, 
    input a, b, c, d
    );

    wire y;
    
    in1 in1(
    .a(a),
    .b(b),
    .c(c),
    .y(y)
    );
    
    in2 in2(
    .w(y),
    .q(d),
    .x(out)
    );
    
endmodule
