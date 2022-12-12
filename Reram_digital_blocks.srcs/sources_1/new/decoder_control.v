`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2022 05:42:34 PM
// Design Name: 
// Module Name: decoder_control
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


module decoder_control(
en, clk, rst, out_row, out_col, out_last, continue
    );
    input en;
    input clk;
    input rst;
    input continue;
    output reg out_last;
    output reg [6:0] out_col, out_row;
    //reg [6:0] count_col;
    //reg [6:0] count_row;
    
    //wire out_col;
    //wire out_row;
    
    
    //integer i;
    //integer j;
    integer check_last = 1'b0;
    //wire cont;
    
    //assign cont = continue;
    
    
    
    always @(posedge clk)
    begin
    if (rst == 1'b1)
    begin
    out_col <= 0;
    out_row <= 0;
    out_last <= 1'b0;
    //count_col <= 0;
    //count_row <= 0;
    end
    
    
    
    else if (check_last!=1 && en==1'b1 && continue==1'b1)
    begin
    out_last = 0;
     
    if(out_col<128)
    begin 
    if (out_row<128)
    begin
    
    if (out_row==127)
    begin
    //count_col = count_col + 1;
    out_col = out_col + 1;
    //count_row = 0;
    out_row =0;
    end
    else
    begin
    out_row = out_row + 1;  
    //count_row = count_row + 1;
    end
    end
    end
    end
    end
    
   
    
    always @(posedge clk)
    begin
    if (out_col == 127 & out_row == 127)
    begin
    
    if (check_last==1)
    begin
    out_last = 1;
    check_last = 0;
    end
    else
    begin
    check_last = 1;
    
    end
    
    end
    end
    
   
    
endmodule
