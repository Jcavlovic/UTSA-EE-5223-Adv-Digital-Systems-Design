`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UTSA EE-5223 Adv. Digital Systems Design
// Engineer: Jordan Cavlovic
// 
// Create Date: 08/24/2026 12:30:12 PM
// Design Name: 
// Module Name: hw_1
// Project Name: Homework 1
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Revision 1.0 - Added modules hw_1_1
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module hw_1_1(
    input a, b, c,
    output [1:0] out
    );
    
    assign out[0] = ~b | (a & ~c);
    assign out[1] = (a & ~b & c);
    
endmodule





