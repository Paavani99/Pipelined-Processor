`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2022 22:49:29
// Design Name: 
// Module Name: ForwardingUnit
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


module ForwardingUnit(
    input [2:0] RegRd_IF_ID,
    input [2:0] RegRd_ID_EX,
    input clk,
    input reset,
    output clk_for,
    output reset_for
    );
    
    always@(*)
    begin
        clk_for = clk;
        reset_for = reset;
        
        if(RegRd_ID_EX != RegRd_IF_ID)
           begin
            clk_for = 0;
            reset_for = 0;
           end
    end
endmodule
