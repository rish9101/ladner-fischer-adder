`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2019 19:16:19
// Design Name: 
// Module Name: two_bits_adder
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


module two_bits_adder(
    input [1:0] a,
    input [1:0] b,
    input cin,
    output [1:0] s,
    output G,
    output P
    );
    
    wire p1,g1,p2,g2,pi,gi,Pi,Gi;
    p_g bit1 (a[0],b[0],p1,g1);
    p_g bit2 (a[1],b[1],p2,g2);
    assign Gi = g1|(p1&cin);

    assign s[0] = p1^cin;
    assign s[1] = p2^Gi;
    assign P=p1&p2;
    assign G=g2|(p2&Gi);
    
endmodule
