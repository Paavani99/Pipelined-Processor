`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2022 16:55:09
// Design Name: 
// Module Name: Processor
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


module Processor(
    input clk,
    input reset
    );
     
    wire [7:0] Instruction_Code;
    wire [7:0] PC_instFetch;
  
    wire jumpIns_ctrl;
    wire [7:0] relAdd_ext;
    wire [7:0] PCnew;
    
    wire opcode_IFID;
    wire PC_IFID;
    wire regRd_IFID;
    
    wire RegWrite_ctrl; 
    wire valueToReg_ctrl;
    
    wire write_data;
    wire regData_regfile;
    
    wire imm_ImmGen;
    wire relAdd_ImmGen; //check 
    
    wire [7:0] PC_IDEX;
    wire [2:0] RegRd_ID_EX; 
    wire [7:0] imm_ID_EX;
    wire [7:0] relAdd_ID_EX;
    wire RegWrite_ID_EX;
    wire jumpIns_ID_EX;
    wire valueToReg_ID_EX;
    wire [31:0] Data1_ID_EX;
    
    wire [7:0] Result_alu;
    
    wire [7:0] PCnew;
    
    wire [7:0] PCnew_EX_WB;
    wire [7:0] ResultALU_EX_WB;
    wire [7:0] imm_EX_WB;
    wire [4:0] RegRd_EX_WB;
    wire RegWrite_EX_WB;
    wire jumpIns_EX_WB;
    wire valueToReg_EX_WB;
    
    wire write_data;
    
    assign regRd_IFID = Instruction_Code[5:3];
    
    MUX_PC muxPC1(jumpIns_EX_WB, PCnew_EX_WB, PC_instFetch, clk, reset); //check pc, reladdext
    Instruction_Fetch IF1(clk, reset, PC_instFetch, Instruction_Code); // check pcnew
    IF_ID_reg reg_IFID1(Instruction_Code, PC_instFetch ,PC_IFID, opcode_IFID, regRd_IFID, clk, reset);
    Control_Unit CU1(opcode_IFID, RegWrite_ctrl, jumpIns_ctrl, valueToReg_ctrl );
    Register_file R1(regRd_IFID, RegRd_EX_WB, write_data, RegWrite_ctrl, clk, reset, regData_regfile ); //check writedata , add rd
    ImmGen IG1(Instruction_Code[2:0], Instruction_Code[5:0],jumpIns_ctrl, imm_ImmGen, relAdd_ImmGen );
    ID_EX_reg reg_IDEX(PC_IFID,regRd_IFID, imm_ImmGen, relAdd_ImmGen, RegWrite_ctrl, jumpIns_ctrl, valueToReg_ctrl, regData_regfile,
        PC_IDEX, RegRd_ID_EX, imm_ID_EX, relAdd_ID_EX, RegWrite_ID_EX, jumpIns_ID_EX, valueToReg_ID_EX ,Data1_ID_EX, clk, reset);
    ALU alu1(Data1_ID_EX, imm_ID_EX, Result_alu);
    PC_calculate PC_Cal1(PC_IDEX, relAdd_ID_EX, PCnew);
    EX_WB_reg reg_EXWB(PCnew, Result_alu, imm_ID_EX, RegRd_ID_EX, RegWrite_ID_EX, jumpIns_ID_EX, valueToReg_ID_EX ,PCnew_EX_WB, ResultALU_EX_WB,
        imm_EX_WB, RegRd_EX_WB, RegWrite_EX_WB,jumpIns_EX_WB, valueToReg_EX_WB, clk, reset );
    WriteToReg WR1(ResultALU_EX_WB, imm_EX_WB,valueToReg_EX_WB, write_data);
    
    
endmodule
