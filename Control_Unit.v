`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2022 23:36:37
// Design Name: 
// Module Name: Control_Unit
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


module Control_Unit(
    input [1:0] opcode_IF_ID,
    output reg RegWrite,
    output reg jumpIns,
    output reg valueToReg
    );
      
    
    always@ (opcode_IF_ID) 
    begin
        jumpIns <= opcode_IF_ID[1];   // 1 for j, 0 for addi and li
        
        if(jumpIns == 0)
            RegWrite <= 1;
         else
            RegWrite <=0;
            
        valueToReg <= opcode_IF_ID[0];   //0 for li , 1 for addi
        
    end
endmodule