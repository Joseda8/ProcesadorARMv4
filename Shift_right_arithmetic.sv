module Shift_right_arithmetic #(parameter N = 3)(input logic [N-1:0] a, b, output logic signed [N-1:0] d6);

	logic signed [N-1:0] temp;
	assign temp = a;
	
	assign d6 = temp >>> b;

endmodule
