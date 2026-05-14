`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2026 20:20:34
// Design Name: 
// Module Name: instruction_fetch_tb
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


module instruction_fetch_tb();
reg clk,reset;
wire [31:0]instruction;
instruction_fetch uut(.clk(clk),.reset(reset),.instruction(instruction));
always#5 clk=~clk;
initial begin
$monitor("time=%0t pc_out=%h instruction=%h",$time,uut.pc.pc_out,instruction);
clk=0;
reset=1;
#10 reset=0;
#100 $finish;
end
endmodule

