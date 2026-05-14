`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2026 09:56:16
// Design Name: 
// Module Name: instruction_memory
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


module instruction_memory(
input [31:0]addr,
output [31:0]instruction);
reg [31:0]memory[0:255];
assign instruction=memory[addr[9:2]];
initial begin
memory[0]=32'h00000013;
memory[1]=32'h00100093;
memory[2]=32'h00200113;
memory[3]=32'h00308193;
end
endmodule
