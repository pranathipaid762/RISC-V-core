`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2026 09:27:29
// Design Name: 
// Module Name: mux_execution
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


module mux_execution(
input [31:0]a,
input [31:0]b,
input [31:0]imm,
input alu_src,
input [6:0]opcode,
input [2:0]funct3,
input [6:0]funct7,
output [31:0]result);
wire [2:0]alu_control;
wire reg_write;
wire [31:0]alu_b;
assign alu_b=(alu_src)?imm:b;
control_unit cu(.opcode(opcode),.funct3(funct3),.funct7(funct7),.alu_control(alu_control),.reg_write(reg_write));
alu ALU(.a(a),.b(alu_b),.alu_control(alu_control),.result(result));
endmodule
