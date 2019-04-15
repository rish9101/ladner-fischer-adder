`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2019 08:56:21 AM
// Design Name: 
// Module Name: fpga
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


module Basys3_prog(a,b,clock,s,Anode,LED_out);
input [7:0] a,b;
input clock;
output [8:0] s;
output reg [3:0] Anode;
output reg [6:0] LED_out;
reg [3:0] LED_BCD;
reg [8:0] state=0;
wire P;
reg cin;
initial
cin=0;
//always
//clock=~clock;

eight_bits_adder add0(a,b,cin,s[7:0],s[8],P);
always@(posedge clock)
begin
    if(state<100)
    begin
    Anode= 4'b1110;
    LED_BCD=s%10;
    state=state+1;
    end
    else if(state<200) begin
    Anode= 4'b1101;
    LED_BCD=(s/10)%10;
    state=state+1;
    end
    else if(state<300) begin
    Anode= 4'b1011;
    LED_BCD=(s/100)%10;
    state=state+1;
    end
    else if(state<400) begin
    Anode= 4'b0111;
    LED_BCD=(s/1000)%10;
    state=(state+1)%400;
    end
end
always@(LED_BCD)
    case(LED_BCD)
    4'b0000: LED_out = 7'b0000001; // "0"     
    4'b0001: LED_out = 7'b1001111; // "1" 
    4'b0010: LED_out = 7'b0010010; // "2" 
    4'b0011: LED_out = 7'b0000110; // "3" 
    4'b0100: LED_out = 7'b1001100; // "4" 
    4'b0101: LED_out = 7'b0100100; // "5" 
    4'b0110: LED_out = 7'b0100000; // "6" 
    4'b0111: LED_out = 7'b0001111; // "7" 
    4'b1000: LED_out = 7'b0000000; // "8"     
    4'b1001: LED_out = 7'b0000100; // "9" 
    default: LED_out = 7'b0000001; // "0"
    endcase
endmodule
