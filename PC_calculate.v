`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2022 20:29:01
// Design Name: 
// Module Name: PC_calculate
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


module PC_calculate(
    input [7:0] PC_ID_EX,
    input [7:0] relAdd_IDEX,
    output reg [7:0] PCnew
    );
    
    always @(*)
    begin 
        PCnew= PC_ID_EX + relAdd_IDEX;
    end
endmodule
