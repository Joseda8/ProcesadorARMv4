module shift_circular_right #(parameter N = 3)(input logic [N-1:0]a, b, output logic [N-1:0] d8);
always_comb
	case(b)
		3'b000: d8 = a;
		3'b001: d8 = {a[0], a[N-1:1]};
		3'b010: d8 = {a[N-2:0], a[2]};
		3'b011: d8 = a;
		3'b100: d8 = {a[0], a[N-1:1]};
		3'b101: d8 = {a[N-2:0], a[2]};
		3'b110: d8 = a;
		3'b111: d8 = {a[0], a[N-1:1]};
		default: d8 = a;
	endcase						
endmodule
