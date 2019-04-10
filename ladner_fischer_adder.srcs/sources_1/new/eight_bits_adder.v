`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2019 20:07:08
// Design Name: 
// Module Name: eight_bits_adder
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


module eight_bits_adder(
    input [7:0] a,
    input [7:0] b,
    input cin,
    output [7:0] s,
    output G,
    output P
    );
    
    wire G1,P1,G2,P2;
    
    four_bits_adder f1 (a[3:0],b[3:0],cin,s[3:0],G1,P1);
    four_bits_adder f2 (a[7:4],b[7:4],G1,s[7:4],G2,P2);
    
    PG pg (G1,P1,G2,P2,G,P);
        
endmodule
