`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2026 20:16:20
// Design Name: 
// Module Name: instruction_decode_tb
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


module instruction_decode_tb();
reg [31:0]instruction;
wire [6:0]opcode;
wire [4:0]rd;
wire [4:0]rs1;
wire [4:0]rs2;
wire [2:0]funct3;
wire [6:0]funct7;
instruction_decode uut(instruction,opcode,rd,funct3,funct7,rs1,rs2);
initial begin
$display("simulation started");
instruction=32'h00308193;
#10;
$display("instruction=%h",instruction);
$display("opcode=%h",opcode);
$display("rd=%d",rd);
$display("rs1=%d",rs1);
$display("rs2=%d",rs2);
$display("funct3=%d",funct3);
$display("funct7=%d",funct7);
#10 $finish;
end
endmodule
