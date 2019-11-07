module TestBench_ALU();

parameter N = 3;

logic [N-1:0] a;
logic [N-1:0] b;
logic [N:0] AluControl;
logic [N-1:0] AluResult; 
logic z;
logic n;
logic c;
logic v;

//logic z, o, c, n);

Alu DUT(a, b, AluControl, AluResult, z, n, c, v);


initial begin
	
	#10 a = 3'b111; b = 3'b001; AluControl = 4'b0000;
	#1	$display("AluResult = %b \n", AluResult);
	#1	$display("z = %b  n = %b c = %b v = %b\n", z, n, c, v);
	
	#10 a = 3'b001; b = 3'b010; AluControl = 4'b0001;
	#1	$display("AluResult = %b \n", AluResult);
	#1	$display("z = %b  n = %b c = %b v = %b\n", z, n, c, v);

	
	#10 a = 3'b100; b = 3'b100; AluControl = 4'b0000;
	#1	$display("AluResult = %b \n", AluResult);
	#1	$display("z = %b  n = %b c = %b v = %b\n", z, n, c, v);
	
	#10 a = 3'b010; b = 3'b110; AluControl = 4'b0000;
	#1	$display("AluResult = %b \n", AluResult);
	#1	$display("z = %b  n = %b c = %b v = %b\n", z, n, c, v);
	
end
endmodule
