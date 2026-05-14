`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2026 19:13:03
// Design Name: 
// Module Name: register_file
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


module register_file(
input clk,
input we,
input [4:0]rs1,rs2,rd,
input [31:0]wd,
output [31:0]rd1,rd2);
reg [31:0] regs [0:31];
integer i;
initial begin
for (i=0;i<=32;i=i+1) begin
regs[i]=0;
end
end
assign rd1=regs[rs1];
assign rd2=regs[rs2];
always @(posedge clk) begin
if(we&&rd!=0) begin
regs[rd]<=wd;
end
end
endmodule
