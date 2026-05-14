`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2026 17:50:05
// Design Name: 
// Module Name: control_unit_tb
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


module control_unit_tb();
reg [6:0]opcode;
reg [2:0]funct3;
reg [6:0]funct7;
wire [2:0]alu_control;
wire reg_write;
control_unit uut(opcode,funct3,funct7,alu_control,reg_write);
initial begin
opcode=7'b0110011;
funct3=3'b000;
funct7=7'b0000000;
#10;
funct3=3'b000;
funct7=7'b0100000;
#10;
funct3=3'b111;
funct7=7'b0000000;
#10;
funct3=3'b110;
funct7=7'b0000000;
#10;
$display("opcode=%b funct3=%b funct7=%b alu_control=%b",opcode,funct3,funct7,alu_control);
#10 $finish;
end
endmodule
