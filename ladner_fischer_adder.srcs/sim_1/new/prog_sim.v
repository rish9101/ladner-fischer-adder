`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2019 06:03:49 AM
// Design Name: 
// Module Name: prog_sim
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


module prog_sim();
reg [7:0] a,b;
wire [8:0] s;
reg clock=0;
always
#5 clock=~clock;
wire [3:0] Anode;
wire [6:0] LED_out;
Basys3_prog prog(a,b,clock,s,Anode,LED_out);
initial
begin
a=123;
b=200;
end
endmodule
