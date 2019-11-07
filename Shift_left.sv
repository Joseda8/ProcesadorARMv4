module Shift_left #(parameter N = 3)(input logic [N-1:0] a, b, output logic [N-1:0] d7);
	
	assign d7 = a << b;

endmodule
