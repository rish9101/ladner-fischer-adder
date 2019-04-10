`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2019 19:42:48
// Design Name: 
// Module Name: sim2
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


module sim2(
    );
    
    reg [3:0]a;
    reg [3:0]b ;
    reg cin;
    wire [3:0] s ;
    wire G,P ;
    
    four_bits_adder add (a,b,cin,s,G,P);
    
    initial begin
        a = 4'b1111;
        b = 4'b1100;
        cin = 0;
     end
    
endmodule
