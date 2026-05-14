`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2026 17:38:47
// Design Name: 
// Module Name: control_unit
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


module control_unit(
input [6:0]opcode,
input [2:0]funct3,
input [6:0]funct7,
output reg [2:0]alu_control,
output reg reg_write );
always @(*) begin
alu_control=3'b000;
reg_write=0;
case(opcode)
7'b0110011:begin
reg_write=1;
case({funct7,funct3})
10'b0000000000:alu_control=3'b000;
10'b0100000000:alu_control=3'b001;
10'b0000000111:alu_control=3'b010;
10'b0000000110:alu_control=3'b011;
default:alu_control=3'b000;
endcase
end
default:begin
alu_control=3'b000;
reg_write=0;
end
endcase
end
endmodule
