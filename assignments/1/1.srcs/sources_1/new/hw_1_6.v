`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UTSA EE-5223 Adv. Digital Systems Design
// Engineer: Jordan Cavlovic
// 
// Create Date: 08/24/2026 03:57:56 PM
// Design Name: 
// Module Name: hw_1_6
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


module hw_1_6(
    output reg out,
    output reg [1:0] state,
    input in, clk
);

    localparam state0 = 2'd0;
    localparam state1 = 2'd1;
    localparam state2 = 2'd2;

    initial begin
        state = 2'b0;
        end
        
    always@(*) begin
        case (state)
            0 : out = 0;
            1 : out = 1;
            2 : out = 1;
            default : out = 0;
            endcase
        end
    
    always@(posedge clk) begin
        case (state)
            0: state <= in ? state0 : state1;
            1: state <= in ? state2 : state1;
            2: state <= in ? state0 : state2;
            default : state = state;
            endcase
    end
endmodule

