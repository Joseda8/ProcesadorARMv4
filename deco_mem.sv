module deco_mem(input logic [31:0] in, output logic dmen_enable, mouse_mem_enable, sprite_mem_enable
					 output logic [1:0] sel_deco_mem);
always_comb
	case(in)
		[32'h0:32'h3f] : begin 
			dmen_enable = 1'b1;
			mouse_mem_enable = 1'b0;
			sprite_mem_enable = 1'b0;
			sel_deco_mem = 2'b01;
			end
		32'h40 : begin 
			dmen_enable = 1'b0;
			mouse_mem_enable = 1'b1;
			sprite_mem_enable = 1'b0;
			sel_deco_mem = 2'b10;
			end
		default: begin 
			dmen_enable = 1'b0;
			mouse_mem_enable = 1'b0;
			sprite_mem_enable = 1'b0;
			sel_deco_mem = 2'b00;
			end
	endcase
endmodule