`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2019 19:37:55
// Design Name: 
// Module Name: four_bits_adder
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


module four_bits_adder(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] s,
    output G,
    output P
    );
    
    wire P1,G1,P2,G2;
    
    two_bits_adder bit12(a[1:0],b[1:0],cin,s[1:0],G1,P1);
    two_bits_adder bit34(a[3:2],b[3:2],G1,s[3:2],G2,P2);
    
    PG pg (G1,P1,G2,P2,G,P);

endmodule
