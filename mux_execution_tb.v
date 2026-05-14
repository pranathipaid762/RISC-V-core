`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2026 09:39:03
// Design Name: 
// Module Name: mux_execution_tb
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


module mux_execution_tb();
reg [31:0]a;
reg [31:0]b;
reg [31:0]imm;
reg alu_src;
reg [6:0]opcode;
reg [2:0]funct3;
reg [6:0]funct7;
wire [31:0]result;
mux_execution uut(a,b,imm,alu_src,opcode,funct3,funct7,result);
initial begin
$display("simulation started");
a=10;
b=5;
imm=20;
alu_src=0;
opcode=7'b0110011;
funct3=3'b000;
funct7=7'b0000000;
#10;
$display("add result=%d",result);
alu_src=1;
opcode=7'b0010011;
funct3=3'b000;
funct7=7'b0000000;
#10;
$display("addi result:%d",result);
#10 $finish;
end
endmodule
