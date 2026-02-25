`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2026 10:35:09
// Design Name: 
// Module Name: traffic_light_tb
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


module traffic_light_tb;

reg clk;
reg rst;

traffic_light uut (
    .clk(clk),
    .rst(rst)
);

// Clock: 10ns period
always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;       // Assert reset (active high)

    #20;
    rst = 0;       // Release reset

    #500;          // Let it run (multiple cycles)

    rst = 1;       // Test reset during operation
    #20;
    rst = 0;

    #300;

    $finish;
end

endmodule
