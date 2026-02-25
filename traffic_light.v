`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2026 10:07:38
// Design Name: 
// Module Name: traffic_light
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

module traffic_light(
    input clk,
    input rst
);

    // State encoding
    parameter RED    = 2'b00;
    parameter GREEN  = 2'b01;
    parameter YELLOW = 2'b10;

    reg [1:0] state;
    reg [3:0] counter;   // 4 bits is enough (max count = 9)

    always @(posedge clk) begin
        if (rst) begin
            state   <= RED;
            counter <= 0;
        end
        else begin
            case (state)

                RED: begin
                    if (counter == 9) begin
                        state   <= GREEN;
                        counter <= 0;
                    end
                    else begin
                        counter <= counter + 1;
                    end
                end

                GREEN: begin
                    if (counter == 9) begin
                        state   <= YELLOW;
                        counter <= 0;
                    end
                    else begin
                        counter <= counter + 1;
                    end
                end

                YELLOW: begin
                    if (counter == 4) begin
                        state   <= RED;
                        counter <= 0;
                    end
                    else begin
                        counter <= counter + 1;
                    end
                end

            endcase
        end
    end

endmodule