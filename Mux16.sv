module Mux16 #(parameter N = 3)(input logic [N-1:0] d0, d1, d2, d3, d4, d5, d6, d7, 
																	d8, d9, d10, d11, d12, d13, d14, d15,
										input logic [3:0] s,
										output logic [N-1:0] y);
				
	assign y = s[3]?(s[2]?(s[1]?(s[0]?d15:d14):(s[0]?d13:d12)):(s[1]?(s[0]?d11:d10):(s[0]?d9:d8)))
	:(s[2]?(s[1]?(s[0]?d7:d6):(s[0]?d5:d4)):(s[1]?(s[0]?d3:d2):(s[0]?d1:d0)));
	
endmodule

