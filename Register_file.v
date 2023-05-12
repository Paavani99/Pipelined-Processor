`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2022 23:38:03
// Design Name: 
// Module Name: Register_file
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


module Register_file(
    input [2:0] Rd_IFID,
    input [2:0] Rd_EXWB,
    input [7:0] Write_Data,
    input RegWrite,
    input clk,
    input Reset,
    output [7:0] Data_1 
    );
    
    reg [7:0] RegMemory [7:0];
    
    assign Data_1 = RegMemory[Rd_IFID];
    
    if(RegWrite==1)
         assign  RegMemory[Rd_EXWB] = Write_Data;
         
    always@(posedge clk,negedge Reset)
    begin 
        if(Reset==0)
            $readmemh("Reg_Mem.mem", RegMemory);         
            //if(RegWrite==1)
                //RegMemory[Write_Reg_Num]<= Write_Data;
        end

endmodule
