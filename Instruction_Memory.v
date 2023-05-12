`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2022 23:18:22
// Design Name: 
// Module Name: Instruction_Memory
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


module Instruction_Memory(
    //input [31:0] PC,
    input [7:0] PC,
    input reset,
    //output [31:0] Instruction_Code
    output [7:0] Instruction_Code
    );
    reg [7:0] Mem [35:0];
    //reg [7:0] Mem [35:0];        
    
    //assign Instruction_Code= {Mem[PC+3],Mem[PC+2],Mem[PC+1],Mem[PC]};
    assign Instruction_Code= Mem[PC];
    
    always@(reset)
    begin
        if(reset==0)
            begin
             $readmemh("InstrucMem.mem", Mem);
            end
     end
    
endmodule
