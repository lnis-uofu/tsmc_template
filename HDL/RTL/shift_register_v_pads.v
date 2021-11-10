//Need to include this file which contains the definition of the pads. 
//There is no RTL code as those one will be used for place & route.
//The RTL definition of the pads is available here: 
// /research/ece/lnis-teaching/Designkits/tsmc180nm/full_custom_lib/verilog/padlib_tsmc180.v
`include "/research/ece/lnis-teaching/5710_6710_F20/Lab_files/HDL/padlib_tsmc180_innovus.v" 

//Include the post-synthesis netlist.
`include "/research/ece/lnis-teaching/5710_6710_F20/Lab_files/HDL/shift_register_mapped.v" 


//Instantiate the TOP module
module shift_register_top_pads ( C, SI, SO );
  input C, SI;
  output SO;

//Instantiate the necessary pads. Here we need 2 inputs pads and 1 output pads.
pad_in pad_in0 (.pad(C), .DataIn(C_pad));
pad_in pad_in1 (.pad(SI), .DataIn(SI_pad));
pad_out_buffered pad_out0 (.pad(SO), .out(SO_pad));

//We also need 1 VDD and 1 GND pad
pad_vdd pad_vdd0 ();
pad_gnd pad_gnd0 ();

//We also need 4 corners pad so the pad ring is continous.
pad_corner corner0 ();
pad_corner corner1 ();
pad_corner corner2 ();
pad_corner corner3 ();

//Finally, we instantiate the verilog moduke obtained after synthesis.
shift_register shift_register_dut (C_pad, SI_pad, SO_pad);
endmodule
