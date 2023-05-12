`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2022 15:29:46
// Design Name: 
// Module Name: MUX_PC
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


module MUX_PC(
    input jumpIns_EXWB,
    input [7:0] PCnew_EXWB,
    output reg [7:0] PC,
    
    input clk,
    input reset
    );
    
        
    always@(*)
    begin
    if(reset == 0)
        PC <= 0;
    else if(jumpIns_EXWB == 1)
        PC <= PCnew_EXWB;
    
    else 
        PC <= PC+1;    
    end
endmodule
