module Alu #(parameter N = 3)(input logic [N-1:0] a, b, input logic [N:0] AluControl, 
										output logic [6:0] AluResult, output logic z, n, c, v); // output logic z, o, c, n);

logic [N-1:0] s;
logic cout1;
logic cout2;

logic [N-1:0] d0;	// Addition
logic [N-1:0] d1;	// Substract
logic [N-1:0] d2;	// And
logic [N-1:0] d3;	// Or
logic [N-1:0] d4;	// Xor
logic [N-1:0] d5;	// Logic Shift Right 
logic [N-1:0] d6;	// Arithmetic Shift Right
logic [N-1:0] d7;	// Shift Left
logic [N-1:0] d8;	// Shift Circular 

logic [N-1:0] final_result;

Addition addition(a, b, d0, cout1); // Addition

Substraction substraction(a, b, d1, cout2); // Substract

And_ and_(a, b, d2); // And

Or_ or_(a, b, d3); // Or

Xor_ xor_(a, b, d4); // Xor

Shift_right shift_right(a, b, d5); // Logic Shift Right 

Shift_right_arithmetic shift_right_arithmetic(a, b, d6); // Arithmetic Shift Right

Shift_left shift_left(a, b, d7); // Shift Left

Mux16 mux16(d0, d1, d2, d3, d4, d5, d6, d7, d8, 0, 0, 0, 0, 0, 0, 0, AluControl, final_result); // MUX 16:1

Zero zero(final_result, z); // Zero Flag

Negative negative (final_result[N-1],n);

Carry_flag carry_flag(cout1, AluControl[N-1], c);

Overflow_flag overflow_flag(AluControl[N-1], AluControl[0], final_result[N-1], a[N-1], b[N-1], v); 


assign AluResult = final_result;

// sevenseg display_obj(final_result, AluResult); // Display

endmodule
