`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2026 18:33:01
// Design Name: 
// Module Name: execution
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


module execution(
input [31:0]a,
input [31:0]b,
input [6:0]opcode,
input [2:0]funct3,
input [6:0]funct7,
output [31:0]result);
wire [2:0]alu_control;
wire reg_write;
control_unit cu(.opcode(opcode),.funct3(funct3),.funct7(funct7),.alu_control(alu_control),.reg_write(reg_write));
alu ALU(.a(a),.b(b),.alu_control(alu_control),.result(result));
endmodule
