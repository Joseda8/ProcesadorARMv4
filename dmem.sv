module dmem(input logic clk, we, input logic dmem_enable,
				input logic [31:0] a, wd,
				output logic [31:0] rd);
				
logic [31:0] RAM[63:0];

assign rd = dmem_enable ? RAM[a[31:2]] : rd; // word aligned

always_ff @(posedge clk)
if (we && dmem_enable) RAM[a[31:2]] <= wd;

endmodule 