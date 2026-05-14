`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2026 13:37:29
// Design Name: 
// Module Name: register_file_wb_tb
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


module register_file_wb_tb;

reg clk;
reg reg_write;
reg [4:0] rs1, rs2, rd;
reg [31:0] write_data;

wire [31:0] read_data1;
wire [31:0] read_data2;

// Instantiate DUT
register_file_wb uut(
    .clk(clk),
    .reg_write(reg_write),
    .rs1(rs1),
    .rs2(rs2),
    .rd(rd),
    .write_data(write_data),
    .read_data1(read_data1),
    .read_data2(read_data2)
);

// Clock
always #5 clk = ~clk;

initial begin
    clk = 0;

    // ? Step 1: Write value 50 into register 3
    reg_write = 1;
    rd = 3;
    write_data = 50;

    #10;  // write happens here

    // ? Step 2: Read from register 3
    reg_write = 0;
    rs1 = 3;

    #10;

    $display("Register[3] = %d", read_data1);

    #10 $finish;
end

endmodule


