`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2026 03:57:56 PM
// Design Name: 
// Module Name: hw_1_3
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


module hw_1_3(
    input a, b, c, d,
    output out
    );
    
    and(y, a, b);
    or(out, y, c);
    
endmodule
