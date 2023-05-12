`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2022 23:55:17
// Design Name: 
// Module Name: EX_WB_reg
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


module EX_WB_reg(

    input [7:0] PCnew,
    input [7:0] Result_alu,
    input [7:0] imm_ID_EX,
    input [4:0] RegRd_ID_EX,
    input RegWrite_ID_EX,
    input jumpIns_ID_EX,
    input valueToReg_ID_EX,
    
    output reg [7:0] PCnew_EX_WB,
    output reg [7:0] ResultALU_EX_WB,
    output reg [7:0] imm_EX_WB,
    output reg [4:0] RegRd_EX_WB,
    output reg RegWrite_EX_WB,
    output reg jumpIns_EX_WB,
    output reg valueToReg_EX_WB,
    
    input clk,
    input Reset
    );
     
    always@(posedge clk, negedge Reset)
    begin
        if(Reset==0)
        begin
            PCnew_EX_WB <=0;
            ResultALU_EX_WB <=0;
            imm_EX_WB <=0;
            RegRd_EX_WB <=0;
            RegWrite_EX_WB <= 0;
            jumpIns_EX_WB <=0;
            valueToReg_EX_WB <=0;
        end
        
        else
        begin
            PCnew_EX_WB <= PCnew;
            ResultALU_EX_WB <= Result_alu;
            imm_EX_WB <= imm_ID_EX;
            RegRd_EX_WB <= RegRd_ID_EX;
            RegWrite_EX_WB <= RegWrite_ID_EX;
            jumpIns_EX_WB <= jumpIns_ID_EX;
            valueToReg_EX_WB <= valueToReg_ID_EX;
        end
    end
endmodule


