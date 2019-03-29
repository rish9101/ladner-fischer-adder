`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2019 20:11:12
// Design Name: 
// Module Name: sim3
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


module sim3(

    );
   reg [7:0]a;
    reg [7:0]b ;
    reg cin;
    wire [7:0] s ;
    wire G,P ;
    
    eight_bits_adder add (a,b,cin,s,G,P);
    
    initial begin
        a = 8'b11110000;
        b = 8'b11001010;
        cin = 0;
     end
     
    
endmodule
