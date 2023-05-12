`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2022 21:47:22
// Design Name: 
// Module Name: WriteToReg
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


module WriteToReg(
    input [7:0] ALUResult,
    input [7:0] imm,
    input valueToReg,
    output [7:0] Write_Data
    );
    
    always@(*)
    begin
    if(valueToReg == 1)
        Write_Data = ALUResult;
     else
        Write_Data= imm;
        
    end
endmodule
