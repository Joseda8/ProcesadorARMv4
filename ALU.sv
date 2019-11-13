
module ALU(
		input logic [31:0] A, B,
		input logic [1:0]  Func,
		output logic  C, Z, N, V,
		output logic [31:0] out 
		);

logic [32:0] tempRes;
		
always_comb
begin
	case (Func)
		2'b00: tempRes = A + B; 			
		2'b01: tempRes = A - B;
		2'b10: tempRes = A & B;
		2'b11: tempRes = A | B;
		default: tempRes = 33'bz;
	endcase
	
	out = tempRes[31:0];
	
end
	
always_comb
begin
	if ( tempRes[32] & ~Func[1] ) C = 1'b1;
	else                          C = 1'b0; 

	if (out == 32'b0) Z = 1'b1;	
	else              Z = 1'b0;
		
	if (out[31]==1) N= 1'b1;
	else            N= 1'b0;
		
	if( ~( A[31] ^ B[31] ^ Func[0] ) & ( A[31] ^ out[31] ) & ~Func[1])
		V = 1'b1;
	else 
		V = 1'b0;
end

endmodule