`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2019 19:29:25
// Design Name: 
// Module Name: sim1
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


module sim1(

    );
    reg [1:0] a,b;
    reg cin;
    wire [1:0] s;
    wire g,p;
    
    two_bits_adder add (a,b,cin,s,g,p);
    
    initial begin 
        
        a = 0;
        b = 0;
        cin = 1'b0;
        
        #5
        a = 0;
        b = 0;
        cin = 1'b1;
          
         #5
        a = 1;
        b = 0;
        cin = 1'b0;
          
        #5
        a = 1;
        b = 0;
        cin = 1'b1;
          
        #5
        a = 1;
        b = 1;
        cin = 1'b0;
          
        #5
        a = 1;
        b = 1;
        cin = 1'b1;
          
        #5
        a = 2;
        b = 0;
        cin = 1'b0;
          
        #5
        a = 2;
        b = 0;
        cin = 1'b1;
          
         #5
        a = 2;
        b = 1;
        cin = 1'b0;
          
         #5
        a = 2;
        b = 1;
        cin = 1'b1;
          
        #5
        a = 2;
        b = 2;
        cin = 1'b0;
          
        #5
        a = 2;
        b = 2;
        cin = 1'b1;
        
        #5
        a = 3;
        b = 0;
        cin = 1'b0;
          
        #5
        a = 3;
        b = 0;
        cin = 1'b1;
          
        #5
        a = 3;
        b = 1;
        cin = 1'b0;
          
        #5
        a = 3;
        b = 1;
        cin = 1'b1;
         
        #5 
        a = 3;
        b = 2;
        cin = 1'b0;
          
        #5
        a = 3;
        b = 2;
        cin = 1'b1;
        
        #5
        a = 3;
        b = 3;
        cin = 1'b0;
        
        #5
        a = 3;
        b = 3;
        cin = 1'b1;
       #5 $finish;
   end
    
endmodule
