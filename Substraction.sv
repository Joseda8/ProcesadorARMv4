module Substraction #(parameter N = 3)(input logic [N-1:0] a, b, output logic [N-1:0] d1, output logic cout);

	assign {cout,d1} = a - b ; 

endmodule
