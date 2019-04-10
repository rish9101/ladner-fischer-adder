N = input("Enter N for N-bit Adder : ")
file = open('bitadder'+N+".v",'w')
p_g = '''module p_g(
    input a,
    input b,
    output p,
    output g
    );
    
    assign p = a^b;
    assign g = a&b;
endmodule\n'''
file.write(p_g)
PG = '''module PG(
    input g1,
    input p1,
    input g2,
    input p2,
    output G,
    output P
    );
    
    
    assign P = p1&p2;
    assign G = g2||(p2&g1);
    
endmodule\n'''
file.write(PG)
bitadder2 = '''module bits_adder2(
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
    
endmodule\n'''
file.write(bitadder2)
i = int(N)
while i//2 != 1:
	x = str(i-1)
	y = str(i//2)
	z = str(i//2-1)
	file.write('''module bits_adder'''+str(i)+'''(
    input ['''+x+''':0] a,
    input ['''+x+''':0] b,
    input cin,
    output ['''+x+''':0] s,
    output G,
    output P
    );
    
    wire G1,P1,G2,P2;
    
    bits_adder'''+y+''' f1 (a['''+z+''':0],b['''+z+''':0],cin,s['''+z+''':0],G1,P1);
    bits_adder'''+y+''' f2 (a['''+x+''':'''+y+'''],b['''+x+''':'''+y+'''],G1,s['''+x+''':'''+y+'''],G2,P2);
    
    PG pg (G1,P1,G2,P2,G,P);
        
endmodule\n''')
	i = int(i//2)
file.close()