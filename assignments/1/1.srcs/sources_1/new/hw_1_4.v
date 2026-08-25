`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UTSA
// Engineer: Jordan Cavlovic
// 
// Create Date: 08/24/2026 03:57:56 PM
// Design Name: 
// Module Name: hw_1_4
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


module mux2to1(
    input sel, a, b,
    output out);
        
    assign out = sel ? b : a;
        
    endmodule
    
module in(
    input c, d,
    output out
    );
    
    assign out = (c & d) | (~d & c) | ~c;
    
endmodule
    
module hw_1_4(
    output out,
    input a, b, c, d,
    input [1:0] sel
    );
    
    wire mux_out1, in1_out;
    
    in in1(
    .c(c),
    .d(d),
    .out(in1_out)
    );
    
    mux2to1 mux1(
    .sel(sel[1]),
    .a(a),
    .b(b),
    .out(mux_out1)
    );
    
    mux2to1 mux2(
    .sel(sel[0]),
    .a(mux_out1),
    .b(in1_out),
    .out(out)
    );
    
 endmodule
