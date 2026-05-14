`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2026 20:10:54
// Design Name: 
// Module Name: instruction_decode
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


module instruction_decode(
input [31:0]instruction,
output [6:0]opcode,
output [4:0]rd,
output [2:0]funct3,
output [6:0]funct7,
output [4:0]rs1,
output [4:0]rs2 );
assign opcode=instruction[6:0];
assign rd=instruction[11:7];
assign rs1=instruction[19:15];
assign rs2=instruction[24:20];
assign funct3=instruction[14:12];
assign funct7=instruction[31:25];
endmodule
