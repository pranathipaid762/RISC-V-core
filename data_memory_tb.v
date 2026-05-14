`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2026 10:50:00
// Design Name: 
// Module Name: data_memory_tb
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


module data_memory_tb;

reg clk;
reg mem_write;
reg mem_read;
reg [31:0] address;
reg [31:0] write_data;
wire [31:0] read_data;

data_memory uut(
    .clk(clk),
    .mem_write(mem_write),
    .mem_read(mem_read),
    .address(address),
    .write_data(write_data),
    .read_data(read_data)
);

// Clock generation
always #5 clk = ~clk;

initial begin
$display("simulation started");
    clk = 0;

    // ? WRITE
    mem_write = 1;
    mem_read = 0;
    address = 5;
    write_data = 200;
    #10;

    // ? READ
    mem_write = 0;
    mem_read = 1;
    address = 5;
    #10;

    $display("Read data = %d", read_data);

    #10 $finish;
end

endmodule
