`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2026 13:42:42
// Design Name: 
// Module Name: full_cpu
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


module full_cpu(
input clk,
input [31:0]instruction,
input [31:0] a, b, imm,
input alu_src,
input [6:0] opcode,
input [2:0] funct3,
input [6:0] funct7,
input mem_write, mem_read,
input mem_to_reg,
input reg_write,
input [4:0] rs1, rs2, rd,
output [31:0] result,
output [31:0] read_data);

wire [31:0] alu_result;
wire [31:0] mem_data;
wire [31:0] write_data;

instruction_decode ID(.instruction(instruction),
.opcode(opcode),
.rd(rd),
.funct3(funct3),
.funct7(funct7),
.rs1(rs1),
.rs2(rs2));

mux_execution EX(
    .a(a),
    .b(b),
    .imm(imm),
    .alu_src(alu_src),
    .opcode(opcode),
    .funct3(funct3),
    .funct7(funct7),
    .result(alu_result));

data_memory MEM(
    .clk(clk),
    .mem_write(mem_write),
    .mem_read(mem_read),
    .address(alu_result),
    .write_data(b),
    .read_data(mem_data));

assign write_data = (mem_to_reg) ? mem_data : alu_result;

register_file_wb RF(
    .clk(clk),
    .reg_write(reg_write),
    .rs1(rs1),
    .rs2(rs2),
    .rd(rd),
    .write_data(write_data),
    .read_data1(),
    .read_data2());
// outputs
assign result = alu_result;
assign read_data = mem_data;

endmodule
