`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UTSA
// Engineer: Jordan Cavlovic
// 
// Create Date: 08/24/2026 01:13:03 PM
// Design Name: 
// Module Name: hw_1_1_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Revicion 1.0 Added hw_1_1 testbench
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module hw_1_tb(
    );
    
    reg [3:0] in;
    reg [1:0] sel;
    reg clk;
    wire [1:0] hw_1_1_out;
    wire hw_1_2_out, hw_1_3_out, hw_1_4_out, hw_1_5_out, hw_1_6_out;
    
    
    hw_1_1 uut_1(
        .a(in[2]),
        .b(in[1]),
        .c(in[0]),
        .out(hw_1_1_out)
        );
        
    hw_1_2 uut_2(
        .a(in[3]),
        .b(in[2]),
        .c(in[1]),
        .d(in[0]),
        .out(hw_1_2_out)
    );
    
    hw_1_3 uut_3(
        .a(in[3]),
        .b(in[2]),
        .c(in[1]),
        .d(in[0]),
        .out(hw_1_3_out)
    );
    
    hw_1_4 uut_4(
        .a(in[3]),
        .b(in[2]),
        .c(in[1]),
        .d(in[0]),
        .sel(sel),
        .out(hw_1_4_out)
    );
    
    hw_1_5 uut_5(
        .a(in[3]),
        .b(in[2]),
        .c(in[1]),
        .d(in[0]),
        .out(hw_1_5_out)
    );
    
//    hw_1_6 uut_6(
//        .i(i),
//        .state(state),
//        .clk(clk),
//        .out(hw_1_6_out)
//    );

    initial begin 
        
        $display("Question 1-5\nABCD\tq1-Out1\tq1-Out2 | q2-Out | q3-Out | Sel1 Sel0 q4-Out | q5-Out");
        $monitor("%b\t   %b\t   %b\t     %b\t      %b\t     %b    %b\t\t %b\t\t  %b", in, hw_1_1_out[0], hw_1_1_out[1], hw_1_2_out, hw_1_3_out, sel[1], sel[0], hw_1_4_out, hw_1_5_out);
        
        in = 4'b0000; #10;
        in = 4'b0001; #10;
        in = 4'b0010; #10;
        in = 4'b0011; #10;
        in = 4'b0100; #10;
        in = 4'b0101; #10;
        in = 4'b0110; sel = 2'b10; #5; sel = 2'b00; #5;
        in = 4'b0111; sel = 2'bXX; #10;
        in = 4'b1000; #10;
        in = 4'b1001; sel = 2'b01; #10;
        in = 4'b1010; sel = 2'bXX; #10;
        in = 4'b1011; sel = 2'b11; #10;
        in = 4'b1100; sel = 2'bXX; #10;
        in = 4'b1101; #10;
        in = 4'b1110; #10;
        in = 4'b1111; #10; sel = 2'b01;
        
        $finish;
    end
    
endmodule
