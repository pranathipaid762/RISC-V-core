`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2026 18:41:32
// Design Name: 
// Module Name: execution_tb
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


module execution_tb();
reg [31:0]a,b;
reg [6:0]opcode;
reg [2:0]funct3;
reg [6:0]funct7;
wire [31:0]result;
execution uut(a,b,opcode,funct3,funct7,result);
initial begin
a=10;
b=5;
opcode=7'b0110011;
funct3=3'b000;
funct7=7'b0000000;
#10;
$display("add result=%d",result);
funct7=7'b0100000;
#10;
$display("sub result=%d",result);
funct3=3'b111;
funct7=7'b0000000;
#10;
$display("and result:%d",result);
funct3=3'b110;
#10;
$display("or result:%d",result);
#10 $finish;
end
endmodule
