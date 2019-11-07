module test_mux16();

logic [2:0] d0;
logic [2:0] d1;
logic [2:0] d2;
logic [2:0] d3;
logic [2:0] d4; 
logic [2:0] d5; 
logic [2:0] d6; 
logic [2:0] d7; 
logic [2:0] d8;
logic [2:0] d9;
logic [2:0] d10;
logic [2:0] d11;
logic [2:0] d12;
logic [2:0] d13;
logic [2:0] d14;
logic [2:0] d15;

logic [3:0] s; // Control
logic [2:0] y; //Salida

Mux16 DUT(d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, s, y);


initial begin
	#1 s = 4'b0000;
	
	#1 d0 = 3'b111; d1 = 3'b101; d2 = 3'b100; d3 = 3'b100; d4 = 3'b000; 
	#1 d5 = 3'b001; d6 = 3'b100; d7 = 3'b110; d8 = 3'b001; d9 = 3'b111; 
	
	
	#1 s = 4'b0001;	
	#1	$display("s = %b  y= %b\n", s, y);
	
	#1 s = 4'b0010;	
	#1	$display("s = %b  y= %b\n", s, y);
	
	#1 s = 4'b0011;	
	#1	$display("s = %b  y= %b\n", s, y);
	
	#1 s = 4'b0101;	
	#1	$display("s = %b  y= %b\n", s, y);
	
end
endmodule
