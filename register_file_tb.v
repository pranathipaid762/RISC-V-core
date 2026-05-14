`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2026 19:48:52
// Design Name: 
// Module Name: register_file_tb
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


module register_file_tb( );
reg clk;
reg we;
reg [4:0]rs1,rs2,rd;
reg [31:0]wd;
wire[31:0]rd1,rd2;
register_file uut(clk,we,rs1,rs2,rd,wd,rd1,rd2);
always #5 clk=~clk;
initial begin
clk=0;
we=1;
rs1=0;
rs2=0;
rd=0;
wd=0;
#10;
rd=5'd3;
wd=32'd10;
#10;
rs1=5'd3;
rs2=5'd0;
#10;
$display("rd1=%d",rd1);
#10 $finish;
end
endmodule
