`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2019 19:22:31
// Design Name: 
// Module Name: PG
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


module PG(
    input g1,
    input p1,
    input g2,
    input p2,
    output G,
    output P
    );
    
    
    assign P = p1&p2;
    assign G = g2||(p2&g1);
    
endmodule
