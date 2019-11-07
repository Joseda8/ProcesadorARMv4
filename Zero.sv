module Zero #(parameter N = 3)(input logic [N-1:0] final_result, 
										output logic z);

	always_comb 
	begin
		if (final_result == 3'b000)
			z <= 1;
		else
			z <= 0;
	end
	
endmodule
