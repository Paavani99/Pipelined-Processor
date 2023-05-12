`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2022 23:39:52
// Design Name: 
// Module Name: ID_EX_reg
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


module ID_EX_reg(
    input [7:0] PC_IF_ID,
    input [2:0] RegRd_IF_ID, 
    input [7:0] imm_ImmGen,
    input [7:0] relAdd_ImmGen,
    input RegWrite_ctrl,
    input jumpIns_ctrl,
    input valueToReg_ctrl,
    input [7:0] Data1_Regfile,
    
    output reg [7:0] PC_ID_EX,
    output reg [2:0] RegRd_ID_EX, 
    output reg [7:0] imm_ID_EX,
    output reg [7:0] relAdd_ID_EX,
    output reg RegWrite_ID_EX,
    output reg jumpIns_ID_EX,
    output reg valueToReg_ID_EX,
    output reg [31:0] Data1_ID_EX,
    input clk,
    input Reset
    );
    
    always @(posedge clk, negedge Reset)
    begin
        if(Reset == 0)
        begin
            PC_ID_EX <=0;
            RegRd_ID_EX <=0;
            imm_ID_EX <=0;
            relAdd_ID_EX <=0;
            RegWrite_ID_EX <=0;
            Data1_ID_EX <=0;
            jumpIns_ID_EX <=0;
            valueToReg_ID_EX <=0;
        end 
        
        else
        begin
            PC_ID_EX <= PC_IF_ID;
            RegRd_ID_EX <= RegRd_IF_ID;
            imm_ID_EX <= imm_ImmGen;
            relAdd_ID_EX <= relAdd_ImmGen;
            RegWrite_ID_EX <= RegWrite_ctrl;
            Data1_ID_EX <= Data1_Regfile;
            jumpIns_ID_EX <= jumpIns_ctrl;
            valueToReg_ID_EX <= valueToReg_ID_EX;
        end 
     end  
endmodule
