module arm(input logic clk, reset, input logic [31:0] Instr, input logic [31:0] ReadData,
				output logic [31:0] PC, output logic [31:0] ALUResult, WriteData, output logic MemWrite);
				
	logic [3:0] ALUFlags;
	logic RegWrite, ALUSrc, MemtoReg, PCSrc;
	logic [1:0] RegSrc, ImmSrc, ALUControl;
	
	
	controller c(clk, reset, Instr[31:12], ALUFlags,
	RegSrc, RegWrite, ImmSrc,
	ALUSrc, ALUControl,
	MemWrite, MemtoReg, PCSrc);
	
	datapath dp(clk, reset,
	RegSrc, RegWrite, ImmSrc,
	ALUSrc, ALUControl,
	MemtoReg, PCSrc,
	ALUFlags, PC, Instr,
	ALUResult, WriteData, ReadData);
	
endmodule
