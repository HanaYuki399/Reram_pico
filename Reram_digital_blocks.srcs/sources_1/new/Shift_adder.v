`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2022 04:15:12 PM
// Design Name: 
// Module Name: Shift_adder
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


module Shift_adder(clk, rst, inp1, inp2, out
    );
    input [7:0] inp1;
    input [7:0] inp2;
    output reg [8:0] out;
    
    input clk;
    input rst;
    
    always @(posedge clk)
    begin
    out={inp2, 1'b0} + inp1; 
    
    end
    
    
    
endmodule
