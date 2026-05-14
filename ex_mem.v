`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2026 11:00:24
// Design Name: 
// Module Name: ex_mem
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


module ex_mem_top(
    input clk,

    input [31:0] a,
    input [31:0] b,
    input [31:0] imm,
    input alu_src,

    input [6:0] opcode,
    input [2:0] funct3,
    input [6:0] funct7,

    input mem_write,
    input mem_read,

    output [31:0] result,
    output [31:0] read_data
);

// wire to connect
wire [31:0] alu_result;

// ? Execution Stage
mux_execution EX(
    .a(a),
    .b(b),
    .imm(imm),
    .alu_src(alu_src),
    .opcode(opcode),
    .funct3(funct3),
    .funct7(funct7),
    .result(alu_result)
);

// ? Memory Stage
data_memory MEM(
    .clk(clk),
    .mem_write(mem_write),
    .mem_read(mem_read),
    .address(alu_result),
    .write_data(b),
    .read_data(read_data)
);

// pass result outside
assign result = alu_result;

endmodule

