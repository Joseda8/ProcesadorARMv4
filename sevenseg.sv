module sevenseg(input logic seg_control, input logic [3:0] in, output logic [6:0] out);
always_comb
	case(in)
		4'b0000: out = seg_control ? 7'b1000000: 7'b0000000;
		4'b0001: out = seg_control ? 7'b1111001: 7'b0000000;
		4'b0010: out = seg_control ? 7'b0100100: 7'b0000000;
		4'b0011: out = seg_control ? 7'b0110000: 7'b0000000;
		4'b0100: out = seg_control ? 7'b0011001: 7'b0000000;
		4'b0101: out = seg_control ? 7'b0010010: 7'b0000000;
		4'b0110: out = seg_control ? 7'b0000010: 7'b0000000;
		4'b0111: out = seg_control ? 7'b1111000: 7'b0000000;
		4'b1000: out = seg_control ? 7'b0000000: 7'b0000000;
		4'b1001: out = seg_control ? 7'b0011000: 7'b0000000;		
		4'b1010: out = seg_control ? 7'b0001000: 7'b0000000;
		4'b1011: out = seg_control ? 7'b0000011: 7'b0000000;
		4'b1100: out = seg_control ? 7'b1000110: 7'b0000000;
		4'b1101: out = seg_control ? 7'b0100001: 7'b0000000;
		4'b1110: out = seg_control ? 7'b0000110: 7'b0000000;
		4'b1111: out = seg_control ? 7'b0001110: 7'b0000000;
		default: out = seg_control ? 7'b0000000: 7'b0000000;
	endcase
endmodule