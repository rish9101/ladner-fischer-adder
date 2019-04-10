`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2019 20:16:52
// Design Name: 
// Module Name: sixt_bits_adder
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


module sixt_bits_adder(
    input [15:0] a,
    input [15:0] b,
    input cin,
    output [15:0] s,
    output G,
    output P
    );
    
    wire G1,P1,G2,P2;
    
    eight_bits_adder e1 (a[7:0],b[7:0],cin,s[7:0],G1,P1);
    eight_bits_adder e2 (a[15:8],b[15:8],G1,s[15:8],G2,P2);
    
    PG pg (G1,P1,G2,P2,G,P);
    
endmodule
