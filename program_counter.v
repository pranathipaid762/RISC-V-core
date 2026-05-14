`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2026 18:48:11
// Design Name: 
// Module Name: program_counter
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


module program_counter(
input clk,
input reset,
output reg [31:0]pc_out);
always @(posedge clk or negedge reset) begin
if(!reset)
pc_out <= 32'b0;
else
pc_out <= pc_out+4;
end
endmodule

