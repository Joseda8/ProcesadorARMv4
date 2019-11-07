module Or_ #(parameter N = 3)(input logic [N-1:0] a, b, output logic [N-1:0] d3);
	
	assign d3 = a | b ;

endmodule
