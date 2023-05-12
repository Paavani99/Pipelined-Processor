`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2022 23:34:48
// Design Name: 
// Module Name: IF_ID_reg
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


module IF_ID_reg(

    input [7:0] Instruction_Code,
    input [7:0] PC_instFetch,
    output reg [7:0] PC_IF_ID,
    output reg [1:0] opcode_IF_ID,
    output reg [2:0] RegRd_IF_ID,
    input clk,
    input Reset
    );
    
    always@(posedge clk, negedge Reset)
    begin
    
        if(Reset==0)
        begin
             opcode_IF_ID <= 0;
             PC_IF_ID <= 0;
             RegRd_IF_ID <= 0;
        end
        
        else
        begin
             opcode_IF_ID <= Instruction_Code[7:6];
             PC_IF_ID <= PC_instFetch;
             RegRd_IF_ID <= Instruction_Code[5:3];
        end
    end
endmodule
