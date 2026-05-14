`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2026 20:18:53
// Design Name: 
// Module Name: instruction_fetch
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


module instruction_fetch(
input clk,
input reset,
output [31:0]instruction);
wire [31:0]pc_out;
 program_counter pc(
 .clk(clk),
 .reset(reset),
 .pc_out(pc_out));
 instruction_memory imem(
 .addr(pc_out),
 .instruction(instruction));
 endmodule
