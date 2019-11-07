module auto_test_ALU();

parameter N = 3;

logic [N-1:0] a;
logic [N-1:0] b;
logic [N:0] AluControl;
logic [N-1:0] AluResult;
logic z;
logic n;
logic c;
logic v;

Alu DUT(a, b, AluControl, AluResult, z, n, c, v);


initial begin

	
	#10 a = 3'b001; b = 3'b001; AluControl = 4'b0000; 
	#1	$display("AluResult = %b \n z = %b n = %b c = %b v = %b ", AluResult, z, n, c, v);
	
	#10 a = 3'b001; b = 3'b011; AluControl = 4'b0000; 
	#1	$display("AluResult = %b \n z = %b n = %b c = %b v = %b ", AluResult, z, n, c, v);
	
	#10 a = 3'b101; b = 3'b011; AluControl = 4'b0010; 
	#1	$display("AluResult = %b \n z = %b n = %b c = %b v = %b ", AluResult, z, n, c, v);
	
	#10 a = 3'b101; b = 3'b001; AluControl = 4'b0011; 
	#1	$display("AluResult = %b \n z = %b n = %b c = %b v = %b ", AluResult, z, n, c, v);
	
end
endmodule
