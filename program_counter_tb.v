`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2026 18:54:26
// Design Name: 
// Module Name: program_counter_tb
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


module program_counter_tb();
reg clk,reset;
wire [31:0]pc_out ;
program_counter uut(clk,reset,pc_out);
initial begin
clk=0;
reset=1;
#5 reset=0;
#10 reset=1;
end
always #5 clk=~clk;
endmodule


