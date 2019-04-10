`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2019 20:20:10
// Design Name: 
// Module Name: sim4
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


module sim4(

    );
    
    reg [15:0]a;
    reg [15:0]b ;
    reg cin;
    wire [15:0] s ;
    wire G,P ;
    
    sixt_bits_adder add (a,b,cin,s,G,P);
    
    initial begin
        a = 16'b1111000011001010;
        b = 16'b1100101011110000;
        cin = 0;
        
        #5 
        a = 65000;
        b = 500;
        cin = 1;
        
        
        #5 
        a = 200;
        b = 480;
        cin = 0;
        
        #5
        a=16'b0000000000000000;
        b=16'b0000000000000001;
        cin=1;
        #5 $finish; 
     end
        
endmodule
