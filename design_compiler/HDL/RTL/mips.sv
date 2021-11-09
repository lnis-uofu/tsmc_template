//---------------------------------------------------------
// mips.sv
// Max Yi (byyi@hmc.edu) and David_Harris@hmc.edu 12/9/03
// Changes 7/3/07
//   Updated to SystemVerilog
//   Fixed endianness
//
// Model of subset of MIPS processor described in Ch 1
//  note that no sign extension is done because width is
//  only 8 bits
//---------------------

// states and instructions

  typedef enum logic [3:0] {FETCH1 = 4'b0000, FETCH2, FETCH3, FETCH4,
                            DECODE, MEMADR, LBRD, LBWR, SBWR,
                            RTYPEEX, RTYPEWR, BEQEX, JEX} statetype;
  typedef enum logic [5:0] {LB    = 6'b100000,
                            SB    = 6'b101000,
                            RTYPE = 6'b000000,
                            BEQ   = 6'b000100,
                            J     = 6'b000010} opcode;
  typedef enum logic [5:0] {ADD =   6'b100000,
                            SUB =   6'b100010,
                            AND =   6'b100100,
                            OR  =   6'b100101,
                            XOR =   6'b110101,
                            MLT =   6'b101111,
                            SHFTL = 6'b111111,
                            SHFTR = 6'b101101,
                            EQ =    6'b110000,
                            NEQ =   6'b110001,
                            GRT =   6'b110011,
                            GRTEQ = 6'b110111,
                            SLT =   6'b101010} functcode;


/*
module mips_chip #(parameter WIDTH = 8, REGBITS = 3)
             (input  logic             clk, reset, 
              input  logic [WIDTH/2-1:0] memdata, 
              output logic             memread, memwrite, 
              output logic [WIDTH/2-1:0] adr, writedata);

	wire clk_pad, reset_pad, memread_pad, memwrite_pad;
	wire [WIDTH/2-1:0] memdata_pad, adr_pad, writedata_pad;

	//Instantiate the necessary pads. Here we need 2 inputs pads and 1 output pads.
	pad_in pad_in0 (.pad(clk), .DataIn(clk_pad));
	pad_in pad_in1 (.pad(reset), .DataIn(reset_pad));
	pad_in pad_in2 (.pad(memdata[0]), .DataIn(memdata_pad[0]));
	pad_in pad_in3 (.pad(memdata[1]), .DataIn(memdata_pad[1]));
	pad_in pad_in4 (.pad(memdata[2]), .DataIn(memdata_pad[2]));
	pad_in pad_in5 (.pad(memdata[3]), .DataIn(memdata_pad[3]));

	pad_out_buffered pad_out0 (.pad(memread), .out(memread_pad));
	pad_out_buffered pad_out1 (.pad(memwrite), .out(memwrite_pad));

	pad_out_buffered pad_out2 (.pad(adr[0]), .out(adr_frchip[0]));
	pad_out_buffered pad_out3 (.pad(adr[1]), .out(adr_frchip[1]));
	pad_out_buffered pad_out4 (.pad(adr[2]), .out(adr_frchip[2]));
	pad_out_buffered pad_out5 (.pad(adr[3]), .out(adr_frchip[3]));
	pad_out_buffered pad_out6 (.pad(writedata[0]), .out(writedata_frchip[0]));
	pad_out_buffered pad_out7 (.pad(writedata[1]), .out(writedata_frchip[1]));
	pad_out_buffered pad_out8 (.pad(writedata[2]), .out(writedata_frchip[2]));
	pad_out_buffered pad_out9 (.pad(writedata[3]), .out(writedata_frchip[3]));

	//We also need 1 VDD and 1 GND pad
	pad_vdd pad_vdd0 ();
	pad_gnd pad_gnd0 ();

	//We also need 4 corners pad so the pad ring is continous.
	pad_corner corner0 ();
	pad_corner corner1 ();
	pad_corner corner2 ();
	pad_corner corner3 ();

	logic [WIDTH-1:0] memdata_tochip; 
	logic [WIDTH-1:0] adr_tochip; 
	logic [WIDTH-1:0] writedata_tochip; 

	assign memdata_tochip = {memdata_pad,memdata_pad};

	//Finally, we instantiate the verilog moduke obtained after synthesis.
	mips mips_module (.clk(clk_pad), .reset(reset_pad), .memdata(memdata_tochip), .memread(memread_pad), .memwrite(memwrite_pad), .adr(adr_frchip), .writedata(writedata_frchip));
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

*/

// simplified MIPS processor
module mips #(parameter WIDTH = 8, REGBITS = 3)
             (input  logic             clk, reset, 
              input  logic [WIDTH-1:0] memdata, 
              output logic             memread, memwrite, 
              output logic [WIDTH-1:0] adr, writedata);

   logic [31:0] instr;
   logic        zero, alusrca, memtoreg, iord, pcen, regwrite, regdst;
   logic [1:0]  pcsrc, alusrcb;
   logic [3:0]  irwrite;
   logic [4:0]  alucontrol;
   logic [5:0]  op, funct;
 
   assign op = instr[31:26];      
   assign funct = instr[5:0];  
      
   controller  cont(clk, reset, op, funct, zero, memread, memwrite, 
                    alusrca, memtoreg, iord, pcen, regwrite, regdst,
                    pcsrc, alusrcb, alucontrol, irwrite);
   datapath    #(WIDTH, REGBITS) 
               dp(clk, reset, memdata, alusrca, memtoreg, iord, pcen,
                  regwrite, regdst, pcsrc, alusrcb, irwrite, alucontrol,
                  zero, instr, adr, writedata);
endmodule

module controller(input logic clk, reset, 
                  input  logic [5:0] op, funct,
                  input  logic       zero, 
                  output logic       memread, memwrite, alusrca,  
                  output logic       memtoreg, iord, pcen, 
                  output logic       regwrite, regdst, 
                  output logic [1:0] pcsrc, alusrcb,
                  output logic [4:0] alucontrol,
                  output logic [3:0] irwrite);

  statetype       state;
  logic           pcwrite, branch;
  logic     [1:0] aluop;

  // control FSM
  statelogic statelog(clk, reset, op, state);
  outputlogic outputlog(state, memread, memwrite, alusrca,
                        memtoreg, iord, 
                        regwrite, regdst, pcsrc, alusrcb, irwrite, 
                        pcwrite, branch, aluop);

  // other control decoding
  aludec  ac(aluop, funct, alucontrol);
  assign pcen = pcwrite | (branch & zero); // program counter enable
endmodule

module statelogic(input  logic       clk, reset,
                  input  logic [5:0] op,
                  output statetype   state);

  statetype nextstate;
  
  always_ff @(posedge clk)
    if (reset) state <= FETCH1;
    else       state <= nextstate;
    
  always_comb
    begin
      case (state)
        FETCH1:  nextstate = FETCH2;
        FETCH2:  nextstate = FETCH3;
        FETCH3:  nextstate = FETCH4;
        FETCH4:  nextstate = DECODE;
        DECODE:  case(op)
                   LB:      nextstate = MEMADR;
                   SB:      nextstate = MEMADR;
                   RTYPE:   nextstate = RTYPEEX;
                   BEQ:     nextstate = BEQEX;
                   J:       nextstate = JEX;
                   default: nextstate = FETCH1; // should never happen
                 endcase
        MEMADR:  case(op)
                   LB:      nextstate = LBRD;
                   SB:      nextstate = SBWR;
                   default: nextstate = FETCH1; // should never happen
                 endcase
        LBRD:    nextstate = LBWR;
        LBWR:    nextstate = FETCH1;
        SBWR:    nextstate = FETCH1;
        RTYPEEX: nextstate = RTYPEWR;
        RTYPEWR: nextstate = FETCH1;
        BEQEX:   nextstate = FETCH1;
        JEX:     nextstate = FETCH1;
        default: nextstate = FETCH1; // should never happen
      endcase
    end
endmodule

module outputlogic(input statetype state,
                   output logic       memread, memwrite, alusrca,  
                   output logic       memtoreg, iord, 
                   output logic       regwrite, regdst, 
                   output logic [1:0] pcsrc, alusrcb,
                   output logic [3:0] irwrite,
                   output logic       pcwrite, branch,
                   output logic [1:0] aluop);

  always_comb
    begin
      // set all outputs to zero, then 
      // conditionally assert just the appropriate ones
      irwrite = 4'b0000;
      pcwrite = 0; branch = 0;
      regwrite = 0; regdst = 0;
      memread = 0; memwrite = 0;
      alusrca = 0; alusrcb = 2'b00; aluop = 2'b00;
      pcsrc = 2'b00;
      iord = 0; memtoreg = 0;
      case (state)
        FETCH1: 
          begin
            memread = 1; 
            irwrite = 4'b0001; 
            alusrcb = 2'b01; 
            pcwrite = 1;
          end
        FETCH2: 
          begin
            memread = 1;
            irwrite = 4'b0010;
            alusrcb = 2'b01;
            pcwrite = 1;
          end
        FETCH3:
          begin
            memread = 1;
            irwrite = 4'b0100;
            alusrcb = 2'b01;
            pcwrite = 1;
          end
        FETCH4:
          begin
            memread = 1;
            irwrite = 4'b1000;
            alusrcb = 2'b01;
            pcwrite = 1;
          end
        DECODE: alusrcb = 2'b11;
        MEMADR:
          begin
            alusrca = 1;
            alusrcb = 2'b10;
          end
        LBRD:
          begin
            memread = 1;
            iord    = 1;
          end
        LBWR:
          begin
            regwrite = 1;
            memtoreg = 1;
          end
        SBWR:
          begin
            memwrite = 1;
            iord     = 1;
          end
        RTYPEEX: 
          begin
            alusrca = 1;
            aluop   = 2'b10;
          end
        RTYPEWR:
          begin
            regdst   = 1;
            regwrite = 1;
          end
        BEQEX:
          begin
            alusrca = 1;
            aluop   = 2'b01;
            branch  = 1;
            pcsrc   = 2'b01;
          end
        JEX:
          begin
            pcwrite  = 1;
            pcsrc    = 2'b10;
          end
      endcase
    end
endmodule

module aludec(input  logic [1:0] aluop, 
              input  logic [5:0] funct, 
              output logic [4:0] alucontrol);

  always_comb
    case (aluop)
      2'b00: alucontrol = 5'b00010;  // add for lb/sb/addi
      2'b01: alucontrol = 5'b00110;  // subtract (for beq)
      default: case(funct)      // R-Type instructions
                 ADD:   alucontrol = 5'b00010;
                 SUB:   alucontrol = 5'b01010;
                 AND:   alucontrol = 5'b00000;
                 OR:    alucontrol = 5'b00001;
                 XOR:   alucontrol = 5'b00011;
                 SLT:   alucontrol = 5'b00111;
                 MLT:   alucontrol = 5'b01110;
                 SHFTR: alucontrol = 5'b00100;
                 SHFTL: alucontrol = 5'b01000;
                 EQ:    alucontrol = 5'b01011;
                 NEQ:   alucontrol = 5'b01111;
                 GRT:   alucontrol = 5'b01100;
                 GRTEQ: alucontrol = 5'b01000;
                 default:   alucontrol = 5'b00101; // should never happen
               endcase
    endcase
endmodule



module datapath #(parameter WIDTH = 8, REGBITS = 3)
                 (input  logic             clk, reset, 
                  input  logic [WIDTH-1:0] memdata, 
                  input  logic             alusrca, memtoreg, iord, 
                  input  logic             pcen, regwrite, regdst,
                  input  logic [1:0]       pcsrc, alusrcb, 
                  input  logic [3:0]       irwrite, 
                  input  logic [4:0]       alucontrol, 
                  output logic             zero, 
                  output logic [31:0]      instr, 
                  output logic [WIDTH-1:0] adr, writedata);

  logic [REGBITS-1:0] ra1, ra2, wa;
  logic [WIDTH-1:0]   pc, nextpc, data, rd1, rd2, wd, a, srca, 
                      srcb, aluresult, aluout, immx4;

  wire [WIDTH-1:0] CONST_ZERO;
  wire [WIDTH-1:0] CONST_ONE;

  assign CONST_ZERO = 0;
  assign CONST_ONE = 1;

  // shift left immediate field by 2
  assign immx4 = {instr[WIDTH-3:0],2'b00};

  // register file address fields
  assign ra1 = instr[REGBITS+20:21];
  assign ra2 = instr[REGBITS+15:16];
  mux2       #(REGBITS) regmux(instr[REGBITS+15:16], 
                               instr[REGBITS+10:11], regdst, wa);

   // independent of bit width, load instruction into four 8-bit registers over four cycles
  flopen     #(8)      ir0(clk, irwrite[0], memdata[7:0], instr[7:0]);
  flopen     #(8)      ir1(clk, irwrite[1], memdata[7:0], instr[15:8]);
  flopen     #(8)      ir2(clk, irwrite[2], memdata[7:0], instr[23:16]);
  flopen     #(8)      ir3(clk, irwrite[3], memdata[7:0], instr[31:24]);

  // datapath
  flopenr    #(WIDTH)  pcreg(clk, reset, pcen, nextpc, pc);
  flop       #(WIDTH)  datareg(clk, memdata, data);
  flop       #(WIDTH)  areg(clk, rd1, a);
  flop       #(WIDTH)  wrdreg(clk, rd2, writedata);
  flop       #(WIDTH)  resreg(clk, aluresult, aluout);
  mux2       #(WIDTH)  adrmux(pc, aluout, iord, adr);
  mux2       #(WIDTH)  src1mux(pc, a, alusrca, srca);
  mux4       #(WIDTH)  src2mux(writedata, CONST_ONE, instr[WIDTH-1:0], 
                               immx4, alusrcb, srcb);
  mux3       #(WIDTH)  pcmux(aluresult, aluout, immx4, 
                             pcsrc, nextpc);
  mux2       #(WIDTH)  wdmux(aluout, data, memtoreg, wd);
  regfile    #(WIDTH,REGBITS) rf(clk, regwrite, ra1, ra2, 
                                 wa, wd, rd1, rd2);
  alu        #(WIDTH) alunit(srca, srcb, alucontrol, aluresult, zero);
endmodule

module alu #(parameter WIDTH = 8)
            (input  logic [WIDTH-1:0] a, b, 
             input  logic [4:0]       alucontrol, 
             output logic [WIDTH-1:0] result,
             output logic             zero);

  logic [WIDTH-1:0] b2, andresult, orresult, sumresult, sltresult;
	logic [WIDTH-1:0] multresult, xorresult, shiftrightresult, shiftleftresult;
	logic [WIDTH-1:0] equalresult, greaterresult, greater_oreqresult, diffresult;

  andN    andblock(a, b, andresult);
  orN     orblock(a, b, orresult);
  xorN     xorblock(a, b, xorresult);
  condinv binv(b, alucontrol[4], b2);
  adder   addblock(a, b2, alucontrol[4], sumresult);
  multiplier_trunc   multblock(a, b, multresult);
	shiftright shiftrightblock (a, b, shiftrightresult);
	shiftleft shiftleftblock (a, b, shiftleftresult);
	equal equalblock (a, b, equalresult);
	greater greaterblock (a, b, greaterresult);
	greater_oreq greater_oreqblock (a, b, greater_oreqresult);
	diff diffblock (a, b, diffresult);
  // slt should be 1 if most significant bit of sum is 1
  assign sltresult = sumresult[WIDTH-1];

  mux12 resultmux(andresult, orresult, xorresult, shiftrightresult, shiftleftresult, sumresult, sltresult, multresult, equalresult, greaterresult, greater_oreqresult, diffresult, alucontrol[3:0], result);
  zerodetect #(WIDTH) zd(result, zero);
endmodule

module regfile #(parameter WIDTH = 8, REGBITS = 3)
                (input  logic               clk, 
                 input  logic               regwrite, 
                 input  logic [REGBITS-1:0] ra1, ra2, wa, 
                 input  logic [WIDTH-1:0]   wd, 
                 output logic [WIDTH-1:0]   rd1, rd2);


	//wire [REGBITS-1:0] address_reg0;
	//wire [REGBITS-1:0] address_reg1;

	//assign address_reg0 = regwrite ? wa : ra1;
	//assign address_reg1 = regwrite ? wa : ra2;

	//rfsphs8x8m1wm4 regfile0 (.Q(rd1), .CLK(clk), .CEN(1'b0), .A(address_reg0), .D(wd), .WEN({regwrite,regwrite}));
	//rfsphs8x8m1wm4 regfile1 (.Q(rd2), .CLK(clk), .CEN(1'b0), .A(address_reg1), .D(wd), .WEN({regwrite,regwrite}));
	rf2hsm1wm1 regfile (.AA(wa), .CLKA(clk), .CENA(1'b0), .WENB({regwrite,regwrite,regwrite,regwrite,regwrite,regwrite,regwrite,regwrite}), .AB(wa), .DB(wd), .CLKB(clk), .CENB(1'b0), .QA(rd1));
	assign rd2 = rd1;
endmodule

module zerodetect #(parameter WIDTH = 8)
                   (input  logic [WIDTH-1:0] a, 
                    output logic             y);

   assign y = (a==0);
endmodule	

module flop #(parameter WIDTH = 8)
             (input  logic             clk, 
              input  logic [WIDTH-1:0] d, 
              output logic [WIDTH-1:0] q);

  always_ff @(posedge clk)
    q <= d;
endmodule

module flopen #(parameter WIDTH = 8)
               (input  logic             clk, en,
                input  logic [WIDTH-1:0] d, 
                output logic [WIDTH-1:0] q);

  always_ff @(posedge clk)
    if (en) q <= d;
endmodule

module flopenr #(parameter WIDTH = 8)
                (input  logic             clk, reset, en,
                 input  logic [WIDTH-1:0] d, 
                 output logic [WIDTH-1:0] q);
 
  always_ff @(posedge clk)
    if      (reset) q <= 0;
    else if (en)    q <= d;
endmodule

module mux2 #(parameter WIDTH = 8)
             (input  logic [WIDTH-1:0] d0, d1, 
              input  logic             s, 
              output logic [WIDTH-1:0] y);

  assign y = s ? d1 : d0; 
endmodule

module mux3 #(parameter WIDTH = 8)
             (input  logic [WIDTH-1:0] d0, d1, d2,
              input  logic [1:0]       s, 
              output logic [WIDTH-1:0] y);

  always_comb 
    casez (s)
      2'b00: y = d0;
      2'b01: y = d1;
      2'b1?: y = d2;
    endcase
endmodule

module mux4 #(parameter WIDTH = 8)
             (input  logic [WIDTH-1:0] d0, d1, d2, d3,
              input  logic [1:0]       s, 
              output logic [WIDTH-1:0] y);

  always_comb
    case (s)
      2'b00: y = d0;
      2'b01: y = d1;
      2'b10: y = d2;
      2'b11: y = d3;
    endcase
endmodule

module mux5 #(parameter WIDTH = 8)
             (input  logic [WIDTH-1:0] d0, d1, d2, d3, d4,
              input  logic [2:0]       s, 
              output logic [WIDTH-1:0] y);

  always_comb
    case (s)
      3'b000: y = d0;
      3'b001: y = d1;
      3'b010: y = d2;
      3'b011: y = d3;
      3'b100: y = d4;	
			default: y = d0;	
    endcase
endmodule

module mux6 #(parameter WIDTH = 8)
             (input  logic [WIDTH-1:0] d0, d1, d2, d3, d4, d5,
              input  logic [2:0]       s, 
              output logic [WIDTH-1:0] y);

  always_comb
    case (s)
      3'b000: y = d0;
      3'b001: y = d1;
      3'b010: y = d2;
      3'b011: y = d3;
      3'b100: y = d4;	
      3'b101: y = d5;	
			default: y = d0;	
    endcase
endmodule

module mux8 #(parameter WIDTH = 8)
             (input  logic [WIDTH-1:0] d0, d1, d2, d3, d4, d5, d6, d7,
              input  logic [2:0]       s, 
              output logic [WIDTH-1:0] y);

  always_comb
    case (s)
      3'b000: y = d0;
      3'b001: y = d1;
      3'b010: y = d2;
      3'b011: y = d3;
      3'b100: y = d4;	
      3'b101: y = d5;	
      3'b110: y = d6;	
      3'b111: y = d7;		
    endcase
endmodule

module mux12 #(parameter WIDTH = 8)
             (input  logic [WIDTH-1:0] d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11,
              input  logic [3:0]       s, 
              output logic [WIDTH-1:0] y);

  always_comb
    case (s)
      4'b0000: y = d0;
      4'b0001: y = d1;
      4'b0010: y = d2;
      4'b0011: y = d3;
      4'b0100: y = d4;	
      4'b0101: y = d5;	
      4'b0110: y = d6;	
      4'b0111: y = d7;	
      4'b1000: y = d8;
      4'b1001: y = d9;
      4'b1010: y = d10;
      4'b1011: y = d11;
			default: y = d0;		
    endcase
endmodule


module andN #(parameter WIDTH = 8)
             (input  logic [WIDTH-1:0] a, b,
              output logic [WIDTH-1:0] y);

  assign y = a & b;
endmodule

module orN #(parameter WIDTH = 8)
            (input  logic [WIDTH-1:0] a, b,
             output logic [WIDTH-1:0] y);

  assign y = a | b;
endmodule

module xorN #(parameter WIDTH = 8)
            (input  logic [WIDTH-1:0] a, b,
             output logic [WIDTH-1:0] y);

  assign y = a ^ b;
endmodule

module norN #(parameter WIDTH = 8)
            (input  logic [WIDTH-1:0] a, b,
             output logic [WIDTH-1:0] y);

  assign y = !(a | b);
endmodule

module inv #(parameter WIDTH = 8)
            (input  logic [WIDTH-1:0] a,
             output logic [WIDTH-1:0] y);

  assign y = ~a;
endmodule

module condinv #(parameter WIDTH = 8)
                (input  logic [WIDTH-1:0] a,
                 input  logic             invert,
                 output logic [WIDTH-1:0] y);

  logic [WIDTH-1:0] ab;

  inv  inverter(a, ab);
  mux2 invmux(a, ab, invert, y);
endmodule

module multiplier_trunc #(parameter WIDTH = 8)
              (input  logic [WIDTH-1:0] a, b,
               output logic [WIDTH-1:0] y);

  assign y = a*b;
endmodule

module shiftleft #(parameter WIDTH = 8)
              (input  logic [WIDTH-1:0] a, b,
               output logic [WIDTH-1:0] y);
	localparam height = $clog2(WIDTH);
  assign y = a << b[height-1:0];
endmodule

module shiftright #(parameter WIDTH = 8)
              (input  logic [WIDTH-1:0] a, b,
               output logic [WIDTH-1:0] y);
	localparam height = $clog2(WIDTH);
  assign y = a >> b[height-1:0];
endmodule



module adder #(parameter WIDTH = 8)
              (input  logic [WIDTH-1:0] a, b,
               input  logic             cin,
               output logic [WIDTH-1:0] y);

  assign y = a + b + cin;
endmodule


module equal #(parameter WIDTH = 8)
              (input  logic [WIDTH-1:0] a, b,
               output logic [WIDTH-1:0] y);

  assign y = a == b;
endmodule

module greater #(parameter WIDTH = 8)
              (input  logic [WIDTH-1:0] a, b,
               output logic [WIDTH-1:0] y);

  assign y = a > b;
endmodule

module greater_oreq #(parameter WIDTH = 8)
              (input  logic [WIDTH-1:0] a, b,
               output logic [WIDTH-1:0] y);

  assign y = a >= b;
endmodule

module diff #(parameter WIDTH = 8)
              (input  logic [WIDTH-1:0] a, b,
               output logic [WIDTH-1:0] y);

  assign y = a != b;
endmodule
