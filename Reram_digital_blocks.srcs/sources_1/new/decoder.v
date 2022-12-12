`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2022 11:18:38 PM
// Design Name: 
// Module Name: decoder
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

module decoder_7_128 ( 
binary_in   , //  7 bit binary input 
decoder_out , //  128-bit out  
enable,        //  Enable for the decoder 
); 
input [6:0] binary_in  ; 
input  enable;  
output [127:0] decoder_out ;  
         
wire [127:0] decoder_out ;  
 
assign decoder_out = (enable) ? (1 << binary_in) : 128'b0 ; 
 
endmodule 




