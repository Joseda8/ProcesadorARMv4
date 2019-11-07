module Xor_ #(parameter N = 3)(input logic [N-1:0] a, b, output logic [N-1:0] d4);
	
	assign d4 = a ^ b ;

endmodule
