module Shift_right #(parameter N = 3)(input logic [N-1:0] a, b, output logic [N-1:0] d5);
	
	assign d5 = a >> b;

endmodule
