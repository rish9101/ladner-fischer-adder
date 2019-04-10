file=open('8bitaddersim.xdc','a')
# file.write("hello")
pins=['V17','V16','W16','W17','W15','V15','W14','W13','V2','T3','T2','R3','W2','U1',
'T1','R2']
pins1=['U16','E19','U19','V19','W18','U15','U14','V14','V13','V3','W3','U3','P3','N3','P1','L1']
for i in range(8):
	file.write("set_property PACKAGE_PIN "+pins1[i]+" [get_ports {s["+str(i)+"]}]\n\t")
	file.write("set_property IOSTANDARD LVCMOS33 [get_ports {s["+str(i)+"]}]\n")

file.close()