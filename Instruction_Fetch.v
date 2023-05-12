`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2022 23:32:56
// Design Name: 
// Module Name: Instruction_Fetch
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


module Instruction_Fetch(
    input clk,
    input reset,
    input [7:0] PC,
    output [7:0] Instruction_Code
    );
    
   Instruction_Memory IM1(PC, reset, Instruction_Code);
    
   
    

endmodule

