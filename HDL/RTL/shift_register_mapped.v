//The following module would be what you obtain after synthesis.
//A cleaner way (as explained in the slides) would be to instead add an `include command at the top of this file were you include 
//the post-synthesis verilog netlist. That way, when resynthesizing your design, the file won't be overwritten.
module shift_register ( C, SI, SO );
  input C, SI;
  output SO;

  wire   [6:0] tmp;

  DFFQX1 \tmp_reg[0]  ( .D(SI), .CLK(C), .Q(tmp[0]) );
  DFFQX1 \tmp_reg[1]  ( .D(tmp[0]), .CLK(C), .Q(tmp[1]) );
  DFFQX1 \tmp_reg[2]  ( .D(tmp[1]), .CLK(C), .Q(tmp[2]) );
  DFFQX1 \tmp_reg[3]  ( .D(tmp[2]), .CLK(C), .Q(tmp[3]) );
  DFFQX1 \tmp_reg[4]  ( .D(tmp[3]), .CLK(C), .Q(tmp[4]) );
  DFFQX1 \tmp_reg[5]  ( .D(tmp[4]), .CLK(C), .Q(tmp[5]) );
  DFFQX1 \tmp_reg[6]  ( .D(tmp[5]), .CLK(C), .Q(tmp[6]) );
  DFFQX1 \tmp_reg[7]  ( .D(tmp[6]), .CLK(C), .Q(SO) );
endmodule

