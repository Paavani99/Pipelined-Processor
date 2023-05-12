`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2022 20:36:10
// Design Name: 
// Module Name: ImmGen
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


module ImmGen(
    input [2:0] imm,
    input [5:0] relAdd,
    input jumpIns_ctrl,
    output reg [7:0] imm_ext,
    output reg [7:0] relAdd_ext
    );
    
    always@(jumpIns_ctrl)
    begin 
    if(jumpIns_ctrl==1)
        relAdd_ext = { {2{1'b0}}, relAdd};
    else
        imm_ext= { {5{imm[2]}}, imm};

    end
    
    endmodule