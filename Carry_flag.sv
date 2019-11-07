module Carry_flag #(parameter N = 3)(input logic [N-1:0] cout, input logic ALU_Control_MSB,
										  output logic z);

	always_comb 
	begin
			z = cout & (~ALU_Control_MSB);
	end

endmodule
