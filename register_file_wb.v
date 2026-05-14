`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2026 13:25:54
// Design Name: 
// Module Name: register_file_wb
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


module register_file_wb(
    input clk,
    input reg_write,
    input [4:0] rs1, rs2, rd,
    input [31:0] write_data,
    output [31:0] read_data1,
    output [31:0] read_data2
);

reg [31:0] registers [0:31];

// Read
assign read_data1 = registers[rs1];
assign read_data2 = registers[rs2];

// Write
always @(posedge clk) begin
    if(reg_write)
        registers[rd] <= write_data;
end

endmodule

