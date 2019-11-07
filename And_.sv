module And_ #(parameter N = 3)(input logic [N-1:0] a, b, output logic [N-1:0] d2);
	
	assign d2 = a & b ;

endmodule
