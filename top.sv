module top(input logic clk, reset,
			  output logic [31:0] WriteData, DataAdr, Instr, PC, PCNext,
			  output logic MemWrite, output logic [6:0] display);
			  
logic [31:0] ReadData, Rd_dmem, Rd_mouse_mem;
logic dmen_enable, mouse_mem_enable, sprite_mem_enable;
logic [1:0] sel_deco_mem;

// instantiate processor and memories
arm arm(clk, reset, Instr, ReadData, MemWrite, PC, PCNext, DataAdr, WriteData);
		  
imemtb imem(PC, Instr);

deco_mem deco_mem(DataAdr, dmen_enable, mouse_mem_enable, sprite_mem_enable, sel_deco_mem);

dmem dmem(clk, MemWrite, dmen_enable, DataAdr, WriteData, Rd_dmem);

mouse_mem mouse_men(clk, 1'b0, mouse_mem_enable, 1'b0, Rd_mouse_mem);

mux4_1 #(32) mux_deco_mem(Rd_dmem, Rd_mouse_mem, 32'b0, 32'b0, sel_deco_mem, ReadData);

sevenseg(MemWrite, ReadData[3:0], display);

endmodule 