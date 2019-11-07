module Overflow_flag #(parameter N = 3)(input logic ALU_Control_MSB, ALU_Control_LSB, Sum_MSB, 
													 A_MSB, B_MSB, output logic z);

	always_comb 
	begin
		z = ~ALU_Control_MSB & (Sum_MSB^A_MSB) & ~(ALU_Control_LSB^A_MSB^B_MSB);
	end
	
endmodule
