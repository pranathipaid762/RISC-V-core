`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2026 11:01:23
// Design Name: 
// Module Name: ex_mem_tb
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


module ex_mem_tb;

reg clk;
reg [31:0] a, b, imm;
reg alu_src;
reg [6:0] opcode;
reg [2:0] funct3;
reg [6:0] funct7;
reg mem_write, mem_read;

wire [31:0] result;
wire [31:0] read_data;

ex_mem_top uut(
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
    .result(result),
    .read_data(read_data)
);

// ? CLOCK (THIS WAS MISSING)
always #5 clk = ~clk;

initial begin
$display("simulation started");

    clk = 0;

    // Step 1: Initialize
    a = 10;
    b = 5;
    imm = 0;
    alu_src = 0;

    opcode = 7'b0110011;
    funct3 = 3'b000;
    funct7 = 7'b0000000;

    mem_write = 1;
    mem_read = 0;

    #10;  // write happens here

    $display("After WRITE ? addr=%d", result);

    // WAIT
    mem_write = 0;
    mem_read = 0;
    #10;

    // READ
    mem_read = 1;
    #10;

    $display("After READ ? data=%d", read_data);

    #10 $finish;
end

endmodule
