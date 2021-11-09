//----- Time scale -----
`timescale 1ns / 1ps

module xor2_tb;

	wire Z;
	reg A, B;

	xor2 xor_dut (A, B, Z);

	initial
		begin
			A = 0;
			B = 0;
		end

	always
		begin
			#1 A = ~ A;
			#2 B = ~ B;
		end
endmodule
