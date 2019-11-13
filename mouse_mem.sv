module mouse_mem (input logic clock, we, mouse_mem_enable, input logic [1:0] clic,
						output logic [31:0] rd);
						
logic [1:0] RAM;

assign rd = mouse_mem_enable ? RAM : rd; // word aligned

always_ff @(posedge clk)
if (we) RAM <= clic;

endmodule

