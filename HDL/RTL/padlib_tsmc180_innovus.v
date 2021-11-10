//////////////////////////////////////////////////
//////////////////////////////////////////////////

module pad_bidirhe_buffered (out, pad, en, in);
  input out;
  input en;
  inout pad;
  output in;
   
wire out_pre, out_pre1, out_pre2, out_buf;
INVX1 inv0 (.A(out), .Z(out_pre));
INVX4 inv1 (.A(out_pre), .Z(out_pre1));
INVX16 inv2 (.A(out_pre1), .Z(out_pre2));
INVX32 inv3 (.A(out_pre2), .Z(out_buf));
pad_bidirhe pad_bidirhe0 (.pad(pad), .DataOut(out_buf), .EN(en), .DataIn(in));
endmodule


module pad_out_buffered (out, pad);
  input out;
  output pad;
   
wire out_pre, out_pre1, out_pre2, out_buf;
INVX1 inv0 (.A(out), .Z(out_pre));
INVX4 inv1 (.A(out_pre), .Z(out_pre1));
INVX16 inv2 (.A(out_pre1), .Z(out_pre2));
INVX32 inv3 (.A(out_pre2), .Z(out_buf));
pad_out pad_out0 (.pad(pad), .DataOut(out_buf));
endmodule


module pad_in (DataIn, pad);
    input pad;
    output DataIn;
endmodule


module pad_out (DataOut, pad);
    input DataOut;
    output pad;
endmodule


module pad_bidirhe (DataIn, DataOut, pad, EN);
    input DataOut, EN;
    inout pad;
    output DataIn;
endmodule

module pad_vdd (VDD);
    inout VDD;
endmodule

module pad_gnd (VSS);
    inout VSS;
endmodule

module pad_corner ();
endmodule


module pad_ana (pad);
    inout pad;
endmodule
