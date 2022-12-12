`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2022 08:26:29 PM
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb( 
    );
    
    reg en;
    reg clk;
    reg rst;
    reg continue;
    wire [6:0] out_row;
    wire [6:0] out_col;
    wire out_last;
    
    decoder_control uut(.en(en), .clk(clk), .rst(rst), .out_row(out_row), .out_col(out_col), .out_last(out_last), .continue(continue));


    
    initial begin 
    forever begin
    #10 clk = ~clk;
    end 
    end
  
  
    initial
    begin  
    clk =1'b0;
    #10  
    rst = 1;
    en=1;
    continue=1;
    #10
    rst=0;
    end
    
    
    
    
endmodule
