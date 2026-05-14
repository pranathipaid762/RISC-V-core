`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2026 13:43:55
// Design Name: 
// Module Name: full_cpu_tb
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


module full_cpu_tb;

reg clk;
reg [31:0] a, b, imm;
reg alu_src;
reg [6:0] opcode;
reg [2:0] funct3;
reg [6:0] funct7;

reg mem_write, mem_read;
reg mem_to_reg;
reg reg_write;

reg [4:0] rs1, rs2, rd;

wire [31:0] result;
wire [31:0] read_data;

full_cpu uut(
    .clk(clk),
    .a(a),
    .b(b),
    .imm(imm),
    .alu_src(alu_src),
    .opcode(opcode),
    .funct3(funct3),
    .funct7(funct7),
    .mem_write(mem_write),
    .mem_read(mem_read),
    .mem_to_reg(mem_to_reg),
    .reg_write(reg_write),
    .rs1(rs1),
    .rs2(rs2),
    .rd(rd),
    .result(result),
    .read_data(read_data)
);

// clock
always #5 clk = ~clk;

initial begin
    clk = 0;

    // ? STORE (write to memory)
    a = 10;
    b = 5;
    imm = 0;
    alu_src = 0;

    opcode = 7'b0110011;
    funct3 = 3'b000;
    funct7 = 7'b0000000;

    mem_write = 1;
    mem_read = 0;

    #10;

    mem_write = 0;
    #10;

    // ? LOAD
    mem_read = 1;
    mem_to_reg = 1;

    #10;

    // ? WRITE BACK to register
    reg_write = 1;
    rd = 3;

    #10;
    rs1 = 0;
    rs2 = 0;

    $display("Final Register Written (rd=3)");

    #10 $finish;
end

endmodule
