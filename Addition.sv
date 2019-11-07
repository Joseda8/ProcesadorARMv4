module Addition #(parameter N = 3)(input logic [N-1:0] a, b, output logic [N-1:0] d0, output logic cout);
	
	assign {cout,d0} = a + b ;

endmodule
