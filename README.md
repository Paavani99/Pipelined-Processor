# Pipelined-Processor
Implementation of a 4-stage pipelined processor in Verilog. 

The processor consits of instruction fetch unit, register file (with 8 8-bit registers), Execution and Writeback unit. 
It takes Reset, CLK as inputs and has no outputs.
The processor also implements forwarding to resolve data hazards.
It contains three pipelined registers IF/ID, ID/EX and EX/WB. When reset is activated the PC, IF/ID, 
ID/EX, EX/WB registers are initialized to 0, the instruction memory and registerfile get loaded by 
predefined values.
Read and write operations on Register file can happen simultaneously and are independent of CLK. 
