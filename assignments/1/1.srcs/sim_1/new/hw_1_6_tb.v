`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UTSA
// Engineer: Jordan Cavlovic
// 
// Create Date: 08/24/2026 07:32:32 PM
// Design Name: 
// Module Name: hw_1_6_tb
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


module hw_1_6_tb(
    );
    
    reg in, clk;
    wire [1:0] state;
    wire out;
    
    hw_1_6 uut(
    .in(in),
    .state(state),
    .clk(clk),
    .out(out)
    );
    
    initial begin
    
    $display("Question 6\nCLK\tIn\tState\tZ");
    $monitor(" %b\t%b\t  %d\t\t%b", clk, in, state, out);
    
    clk = 1 ;in = 1; #10;
    clk = ~clk; # 10;
    clk = ~clk; in = 0; #10;
    clk = ~clk; #10;
    clk = ~clk; in = 0; #10;
    clk = ~clk; in = 1; #10;
    clk = ~clk; #10;
    clk = ~clk;in = 0; #10;
    clk = ~clk; #10;
    clk = ~clk;in = 1; #10;
    clk = ~clk; #10;
    clk = ~clk;in = 1; #10;
    
    end
endmodule
