/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP5
// Date      : Tue Nov  9 19:11:59 2021
/////////////////////////////////////////////////////////////


module statelogic ( clk, reset, op, state );
  input [5:0] op;
  output [3:0] state;
  input clk, reset;
  wire   N26, N27, N28, N29, n1, n2, n3, n4, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n16, n20;

  NAND3X1 U23 ( .A(n21), .B(n22), .C(n23), .Z(N29) );
  NOR2X1 U24 ( .A(n24), .B(n5), .Z(n23) );
  NAND3X1 U25 ( .A(n14), .B(n3), .C(state[3]), .Z(n22) );
  NAND3X1 U26 ( .A(n8), .B(n13), .C(op[3]), .Z(n21) );
  NAND3X1 U27 ( .A(n25), .B(n26), .C(n27), .Z(N28) );
  NOR2X1 U28 ( .A(n28), .B(n29), .Z(n27) );
  NOR2X1 U29 ( .A(n30), .B(n31), .Z(n28) );
  NAND3X1 U30 ( .A(n14), .B(n2), .C(state[1]), .Z(n26) );
  NAND3X1 U31 ( .A(n20), .B(n1), .C(state[0]), .Z(n32) );
  NAND2X1 U32 ( .A(op[1]), .B(n5), .Z(n25) );
  NAND3X1 U33 ( .A(n6), .B(n20), .C(n10), .Z(n33) );
  NAND3X1 U34 ( .A(n34), .B(n9), .C(n7), .Z(N27) );
  NAND2X1 U35 ( .A(n35), .B(n36), .Z(n29) );
  NAND3X1 U36 ( .A(n13), .B(n11), .C(n8), .Z(n36) );
  NAND3X1 U37 ( .A(n38), .B(n3), .C(state[0]), .Z(n37) );
  OR2X1 U38 ( .A(n39), .B(reset), .Z(n35) );
  NAND3X1 U39 ( .A(n20), .B(n1), .C(n40), .Z(n34) );
  NAND2X1 U40 ( .A(n41), .B(n42), .Z(n40) );
  NAND3X1 U41 ( .A(n4), .B(n2), .C(state[1]), .Z(n42) );
  NAND2X1 U42 ( .A(state[0]), .B(n3), .Z(n41) );
  NAND3X1 U43 ( .A(n43), .B(n9), .C(n44), .Z(N26) );
  NAND2X1 U44 ( .A(n8), .B(n16), .Z(n44) );
  NAND3X1 U45 ( .A(n45), .B(n12), .C(n46), .Z(n31) );
  AND2X1 U46 ( .A(n47), .B(op[5]), .Z(n46) );
  NOR2X1 U47 ( .A(reset), .B(op[2]), .Z(n45) );
  NOR2X1 U48 ( .A(n48), .B(n49), .Z(n24) );
  NAND3X1 U49 ( .A(n47), .B(n16), .C(op[2]), .Z(n49) );
  NAND3X1 U50 ( .A(n12), .B(n11), .C(n50), .Z(n48) );
  NOR2X1 U51 ( .A(reset), .B(op[5]), .Z(n50) );
  NAND2X1 U52 ( .A(n51), .B(n20), .Z(n43) );
  NAND3X1 U53 ( .A(n52), .B(n39), .C(n53), .Z(n51) );
  NAND2X1 U54 ( .A(n10), .B(n12), .Z(n53) );
  NAND3X1 U55 ( .A(n47), .B(n16), .C(n55), .Z(n54) );
  NOR2X1 U56 ( .A(op[3]), .B(op[2]), .Z(n55) );
  NAND3X1 U57 ( .A(n4), .B(n3), .C(n38), .Z(n30) );
  NOR2X1 U58 ( .A(op[4]), .B(op[0]), .Z(n47) );
  NAND3X1 U59 ( .A(n38), .B(n4), .C(state[1]), .Z(n39) );
  NOR2X1 U60 ( .A(n1), .B(state[3]), .Z(n38) );
  NAND3X1 U61 ( .A(n1), .B(n2), .C(n4), .Z(n52) );
  DFFQQBX1 \state_reg[1]  ( .D(N27), .CLK(clk), .Q(state[1]), .QB(n3) );
  DFFQQBX1 \state_reg[0]  ( .D(N26), .CLK(clk), .Q(state[0]), .QB(n4) );
  DFFQQBX1 \state_reg[3]  ( .D(N29), .CLK(clk), .Q(state[3]), .QB(n2) );
  DFFQQBX1 \state_reg[2]  ( .D(N28), .CLK(clk), .Q(state[2]), .QB(n1) );
  INVX2 U3 ( .A(n33), .Z(n5) );
  INVX2 U4 ( .A(op[5]), .Z(n6) );
  INVX2 U5 ( .A(n29), .Z(n7) );
  INVX2 U6 ( .A(n31), .Z(n8) );
  INVX2 U7 ( .A(n24), .Z(n9) );
  INVX2 U8 ( .A(n54), .Z(n10) );
  INVX2 U9 ( .A(op[3]), .Z(n11) );
  INVX2 U10 ( .A(op[1]), .Z(n12) );
  INVX2 U11 ( .A(n37), .Z(n13) );
  INVX2 U12 ( .A(n32), .Z(n14) );
  INVX2 U13 ( .A(n30), .Z(n16) );
  INVX2 U14 ( .A(reset), .Z(n20) );
endmodule


module outputlogic ( state, memread, memwrite, alusrca, memtoreg, iord, 
        regwrite, regdst, pcsrc, alusrcb, irwrite, pcwrite, branch, aluop );
  input [3:0] state;
  output [1:0] pcsrc;
  output [1:0] alusrcb;
  output [3:0] irwrite;
  output [1:0] aluop;
  output memread, memwrite, alusrca, memtoreg, iord, regwrite, regdst, pcwrite,
         branch;
  wire   N15, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, \pcsrc[0] , n2, n7, n11, n12, n13, n14;
  assign irwrite[0] = N15;
  assign aluop[0] = \pcsrc[0] ;
  assign branch = \pcsrc[0] ;
  assign pcsrc[0] = \pcsrc[0] ;

  NAND2X1 U17 ( .A(n15), .B(n16), .Z(regwrite) );
  NAND3X1 U18 ( .A(n17), .B(state[1]), .C(state[3]), .Z(n15) );
  NAND2X1 U19 ( .A(n13), .B(n18), .Z(pcwrite) );
  NAND2X1 U20 ( .A(n19), .B(n20), .Z(n18) );
  NAND3X1 U21 ( .A(state[0]), .B(n11), .C(n22), .Z(n21) );
  AND2X1 U22 ( .A(n23), .B(n17), .Z(irwrite[2]) );
  NAND3X1 U23 ( .A(state[1]), .B(state[0]), .C(n22), .Z(n24) );
  AND2X1 U24 ( .A(n17), .B(n19), .Z(memwrite) );
  NAND3X1 U25 ( .A(state[2]), .B(state[0]), .C(n23), .Z(n16) );
  NAND2X1 U26 ( .A(n13), .B(n25), .Z(memread) );
  NAND2X1 U27 ( .A(n25), .B(n26), .Z(iord) );
  NAND3X1 U28 ( .A(n2), .B(n14), .C(n19), .Z(n26) );
  NAND2X1 U29 ( .A(n20), .B(n23), .Z(n25) );
  NOR2X1 U30 ( .A(n11), .B(state[3]), .Z(n23) );
  NAND2X1 U31 ( .A(n27), .B(n13), .Z(alusrcb[0]) );
  NOR2X1 U32 ( .A(state[3]), .B(state[2]), .Z(n22) );
  NAND2X1 U33 ( .A(alusrcb[1]), .B(n2), .Z(n27) );
  NAND3X1 U34 ( .A(n28), .B(n29), .C(n30), .Z(alusrca) );
  NAND2X1 U35 ( .A(alusrcb[1]), .B(state[0]), .Z(n30) );
  NAND3X1 U36 ( .A(n11), .B(n12), .C(state[2]), .Z(n31) );
  NAND3X1 U37 ( .A(state[0]), .B(n14), .C(n19), .Z(n29) );
  NOR2X1 U38 ( .A(n12), .B(state[1]), .Z(n19) );
  NAND3X1 U39 ( .A(state[3]), .B(state[1]), .C(n32), .Z(n28) );
  NOR2X1 U40 ( .A(state[2]), .B(n2), .Z(n32) );
  NOR2X1 U41 ( .A(n7), .B(n33), .Z(N15) );
  NAND2X1 U42 ( .A(n11), .B(n12), .Z(n33) );
  NOR2X1 U43 ( .A(n20), .B(state[0]), .Z(n17) );
  NOR2X1 U44 ( .A(n14), .B(state[0]), .Z(n20) );
  INVX2 U3 ( .A(n28), .Z(\pcsrc[0] ) );
  INVX2 U4 ( .A(state[0]), .Z(n2) );
  INVX2 U5 ( .A(n21), .Z(irwrite[1]) );
  INVX2 U6 ( .A(n24), .Z(irwrite[3]) );
  INVX2 U7 ( .A(n16), .Z(memtoreg) );
  INVX2 U8 ( .A(n29), .Z(aluop[1]) );
  INVX2 U9 ( .A(n17), .Z(n7) );
  INVX2 U10 ( .A(n15), .Z(regdst) );
  INVX2 U11 ( .A(n18), .Z(pcsrc[1]) );
  INVX2 U12 ( .A(n31), .Z(alusrcb[1]) );
  INVX2 U13 ( .A(state[1]), .Z(n11) );
  INVX2 U14 ( .A(state[3]), .Z(n12) );
  INVX2 U15 ( .A(n22), .Z(n13) );
  INVX2 U16 ( .A(state[2]), .Z(n14) );
endmodule


module aludec ( aluop, funct, alucontrol );
  input [1:0] aluop;
  input [5:0] funct;
  output [4:0] alucontrol;
  wire   \*Logic0* , n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n1, n2, n3, n4, n5, n6, n7, n8, n9;
  assign alucontrol[4] = \*Logic0* ;

  NOR2X1 U12 ( .A(n1), .B(n10), .Z(alucontrol[3]) );
  NAND2X1 U13 ( .A(aluop[1]), .B(n11), .Z(n10) );
  NAND3X1 U14 ( .A(n12), .B(n13), .C(n14), .Z(n11) );
  NAND2X1 U15 ( .A(funct[1]), .B(n15), .Z(n14) );
  NAND2X1 U16 ( .A(n16), .B(n17), .Z(n15) );
  NAND2X1 U17 ( .A(n4), .B(funct[0]), .Z(n17) );
  NAND3X1 U18 ( .A(n7), .B(n6), .C(n4), .Z(n12) );
  NAND2X1 U19 ( .A(n18), .B(n19), .Z(alucontrol[2]) );
  NAND2X1 U20 ( .A(aluop[1]), .B(n20), .Z(n19) );
  NAND3X1 U21 ( .A(n21), .B(n22), .C(n23), .Z(n20) );
  NAND3X1 U22 ( .A(funct[1]), .B(n6), .C(n4), .Z(n22) );
  OR2X1 U23 ( .A(n5), .B(funct[4]), .Z(n21) );
  NAND2X1 U24 ( .A(aluop[0]), .B(n9), .Z(n18) );
  NAND2X1 U25 ( .A(aluop[1]), .B(n24), .Z(alucontrol[1]) );
  NAND2X1 U26 ( .A(funct[5]), .B(n25), .Z(n24) );
  NAND3X1 U27 ( .A(n26), .B(n27), .C(n28), .Z(n25) );
  NOR2X1 U28 ( .A(n3), .B(n29), .Z(n28) );
  NAND2X1 U29 ( .A(n30), .B(n16), .Z(n29) );
  NAND3X1 U30 ( .A(n8), .B(n5), .C(n31), .Z(n16) );
  NAND3X1 U31 ( .A(n7), .B(n5), .C(n33), .Z(n27) );
  NAND2X1 U32 ( .A(n34), .B(n35), .Z(n33) );
  NAND2X1 U33 ( .A(funct[4]), .B(n36), .Z(n35) );
  NAND2X1 U34 ( .A(n8), .B(n6), .Z(n34) );
  OR2X1 U35 ( .A(n13), .B(funct[4]), .Z(n26) );
  NAND3X1 U36 ( .A(funct[1]), .B(n36), .C(funct[3]), .Z(n13) );
  AND2X1 U37 ( .A(aluop[1]), .B(n37), .Z(alucontrol[0]) );
  NAND2X1 U38 ( .A(n23), .B(n38), .Z(n37) );
  NAND3X1 U39 ( .A(n7), .B(n5), .C(n39), .Z(n38) );
  OR2X1 U40 ( .A(n36), .B(funct[4]), .Z(n39) );
  NOR2X1 U41 ( .A(n6), .B(n8), .Z(n36) );
  NOR2X1 U42 ( .A(n40), .B(n41), .Z(n23) );
  NAND3X1 U43 ( .A(n42), .B(n43), .C(funct[5]), .Z(n41) );
  NAND3X1 U44 ( .A(funct[2]), .B(n8), .C(funct[4]), .Z(n43) );
  NAND2X1 U45 ( .A(funct[1]), .B(n44), .Z(n42) );
  NAND2X1 U46 ( .A(n45), .B(n46), .Z(n44) );
  NAND2X1 U47 ( .A(n47), .B(n5), .Z(n46) );
  OR2X1 U48 ( .A(n31), .B(funct[0]), .Z(n45) );
  NAND3X1 U49 ( .A(n48), .B(n49), .C(n50), .Z(n40) );
  AND2X1 U50 ( .A(n30), .B(n32), .Z(n50) );
  NAND3X1 U51 ( .A(n4), .B(funct[0]), .C(n51), .Z(n32) );
  NOR2X1 U52 ( .A(funct[2]), .B(funct[1]), .Z(n51) );
  NAND3X1 U53 ( .A(n31), .B(funct[3]), .C(n53), .Z(n30) );
  NOR2X1 U54 ( .A(funct[0]), .B(n7), .Z(n53) );
  NOR2X1 U55 ( .A(funct[4]), .B(funct[2]), .Z(n31) );
  NAND3X1 U56 ( .A(n2), .B(n7), .C(funct[3]), .Z(n49) );
  NOR2X1 U57 ( .A(n8), .B(funct[4]), .Z(n47) );
  NAND3X1 U58 ( .A(n52), .B(n6), .C(funct[0]), .Z(n48) );
  NAND2X1 U59 ( .A(funct[4]), .B(n5), .Z(n52) );
  TIE0 U3 ( .Z(\*Logic0* ) );
  INVX2 U4 ( .A(funct[5]), .Z(n1) );
  INVX2 U5 ( .A(n47), .Z(n2) );
  INVX2 U6 ( .A(n32), .Z(n3) );
  INVX2 U7 ( .A(n52), .Z(n4) );
  INVX2 U8 ( .A(funct[3]), .Z(n5) );
  INVX2 U9 ( .A(funct[2]), .Z(n6) );
  INVX2 U10 ( .A(funct[1]), .Z(n7) );
  INVX2 U11 ( .A(funct[0]), .Z(n8) );
  INVX2 U60 ( .A(aluop[1]), .Z(n9) );
endmodule


module controller ( clk, reset, op, funct, zero, memread, memwrite, alusrca, 
        memtoreg, iord, pcen, regwrite, regdst, pcsrc, alusrcb, alucontrol, 
        irwrite );
  input [5:0] op;
  input [5:0] funct;
  output [1:0] pcsrc;
  output [1:0] alusrcb;
  output [4:0] alucontrol;
  output [3:0] irwrite;
  input clk, reset, zero;
  output memread, memwrite, alusrca, memtoreg, iord, pcen, regwrite, regdst;
  wire   pcwrite, branch, n1;
  wire   [3:0] state;
  wire   [1:0] aluop;
  wire   SYNOPSYS_UNCONNECTED__0;

  OR2X1 U1 ( .A(n1), .B(pcwrite), .Z(pcen) );
  AND2X1 U2 ( .A(zero), .B(branch), .Z(n1) );
  statelogic statelog ( .clk(clk), .reset(reset), .op(op), .state(state) );
  outputlogic outputlog ( .state(state), .memread(memread), .memwrite(memwrite), .alusrca(alusrca), .memtoreg(memtoreg), .iord(iord), .regwrite(regwrite), 
        .regdst(regdst), .pcsrc(pcsrc), .alusrcb(alusrcb), .irwrite(irwrite), 
        .pcwrite(pcwrite), .branch(branch), .aluop(aluop) );
  aludec ac ( .aluop(aluop), .funct(funct), .alucontrol({
        SYNOPSYS_UNCONNECTED__0, alucontrol[3:0]}) );
  TIE0 U3 ( .Z(alucontrol[4]) );
endmodule


module mux2_WIDTH3 ( d0, d1, s, y );
  input [2:0] d0;
  input [2:0] d1;
  output [2:0] y;
  input s;
  wire   n2, n3, n4, n5, n6, n7, n1;

  NAND2X1 U2 ( .A(n2), .B(n3), .Z(y[2]) );
  NAND2X1 U3 ( .A(d0[2]), .B(n1), .Z(n3) );
  NAND2X1 U4 ( .A(s), .B(d1[2]), .Z(n2) );
  NAND2X1 U5 ( .A(n4), .B(n5), .Z(y[1]) );
  NAND2X1 U6 ( .A(d0[1]), .B(n1), .Z(n5) );
  NAND2X1 U7 ( .A(d1[1]), .B(s), .Z(n4) );
  NAND2X1 U8 ( .A(n6), .B(n7), .Z(y[0]) );
  NAND2X1 U9 ( .A(d0[0]), .B(n1), .Z(n7) );
  NAND2X1 U10 ( .A(d1[0]), .B(s), .Z(n6) );
  INVX2 U1 ( .A(s), .Z(n1) );
endmodule


module flopen_WIDTH8_0 ( clk, en, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk, en;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n3;

  DFFQX1 \q_reg[7]  ( .D(n25), .CLK(clk), .Q(q[7]) );
  DFFQX1 \q_reg[6]  ( .D(n24), .CLK(clk), .Q(q[6]) );
  DFFQX1 \q_reg[5]  ( .D(n23), .CLK(clk), .Q(q[5]) );
  DFFQX1 \q_reg[4]  ( .D(n22), .CLK(clk), .Q(q[4]) );
  DFFQX1 \q_reg[3]  ( .D(n21), .CLK(clk), .Q(q[3]) );
  DFFQX1 \q_reg[2]  ( .D(n20), .CLK(clk), .Q(q[2]) );
  DFFQX1 \q_reg[1]  ( .D(n19), .CLK(clk), .Q(q[1]) );
  DFFQX1 \q_reg[0]  ( .D(n18), .CLK(clk), .Q(q[0]) );
  NAND2X1 U2 ( .A(n1), .B(n2), .Z(n18) );
  NAND2X1 U3 ( .A(en), .B(d[0]), .Z(n2) );
  NAND2X1 U4 ( .A(q[0]), .B(n3), .Z(n1) );
  NAND2X1 U5 ( .A(n4), .B(n5), .Z(n19) );
  NAND2X1 U6 ( .A(d[1]), .B(en), .Z(n5) );
  NAND2X1 U7 ( .A(q[1]), .B(n3), .Z(n4) );
  NAND2X1 U8 ( .A(n6), .B(n7), .Z(n20) );
  NAND2X1 U9 ( .A(d[2]), .B(en), .Z(n7) );
  NAND2X1 U10 ( .A(q[2]), .B(n3), .Z(n6) );
  NAND2X1 U11 ( .A(n8), .B(n9), .Z(n21) );
  NAND2X1 U12 ( .A(d[3]), .B(en), .Z(n9) );
  NAND2X1 U13 ( .A(q[3]), .B(n3), .Z(n8) );
  NAND2X1 U14 ( .A(n10), .B(n11), .Z(n22) );
  NAND2X1 U15 ( .A(d[4]), .B(en), .Z(n11) );
  NAND2X1 U16 ( .A(q[4]), .B(n3), .Z(n10) );
  NAND2X1 U17 ( .A(n12), .B(n13), .Z(n23) );
  NAND2X1 U18 ( .A(d[5]), .B(en), .Z(n13) );
  NAND2X1 U19 ( .A(q[5]), .B(n3), .Z(n12) );
  NAND2X1 U20 ( .A(n14), .B(n15), .Z(n24) );
  NAND2X1 U21 ( .A(d[6]), .B(en), .Z(n15) );
  NAND2X1 U22 ( .A(q[6]), .B(n3), .Z(n14) );
  NAND2X1 U23 ( .A(n16), .B(n17), .Z(n25) );
  NAND2X1 U24 ( .A(d[7]), .B(en), .Z(n17) );
  NAND2X1 U25 ( .A(q[7]), .B(n3), .Z(n16) );
  INVX2 U26 ( .A(en), .Z(n3) );
endmodule


module flopen_WIDTH8_3 ( clk, en, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk, en;
  wire   n3, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49;

  DFFQX1 \q_reg[7]  ( .D(n26), .CLK(clk), .Q(q[7]) );
  DFFQX1 \q_reg[6]  ( .D(n27), .CLK(clk), .Q(q[6]) );
  DFFQX1 \q_reg[5]  ( .D(n28), .CLK(clk), .Q(q[5]) );
  DFFQX1 \q_reg[4]  ( .D(n29), .CLK(clk), .Q(q[4]) );
  DFFQX1 \q_reg[3]  ( .D(n30), .CLK(clk), .Q(q[3]) );
  DFFQX1 \q_reg[2]  ( .D(n31), .CLK(clk), .Q(q[2]) );
  DFFQX1 \q_reg[1]  ( .D(n32), .CLK(clk), .Q(q[1]) );
  DFFQX1 \q_reg[0]  ( .D(n33), .CLK(clk), .Q(q[0]) );
  NAND2X1 U2 ( .A(n49), .B(n48), .Z(n33) );
  NAND2X1 U3 ( .A(en), .B(d[0]), .Z(n48) );
  NAND2X1 U4 ( .A(q[0]), .B(n3), .Z(n49) );
  NAND2X1 U5 ( .A(n47), .B(n46), .Z(n32) );
  NAND2X1 U6 ( .A(d[1]), .B(en), .Z(n46) );
  NAND2X1 U7 ( .A(q[1]), .B(n3), .Z(n47) );
  NAND2X1 U8 ( .A(n45), .B(n44), .Z(n31) );
  NAND2X1 U9 ( .A(d[2]), .B(en), .Z(n44) );
  NAND2X1 U10 ( .A(q[2]), .B(n3), .Z(n45) );
  NAND2X1 U11 ( .A(n43), .B(n42), .Z(n30) );
  NAND2X1 U12 ( .A(d[3]), .B(en), .Z(n42) );
  NAND2X1 U13 ( .A(q[3]), .B(n3), .Z(n43) );
  NAND2X1 U14 ( .A(n41), .B(n40), .Z(n29) );
  NAND2X1 U15 ( .A(d[4]), .B(en), .Z(n40) );
  NAND2X1 U16 ( .A(q[4]), .B(n3), .Z(n41) );
  NAND2X1 U17 ( .A(n39), .B(n38), .Z(n28) );
  NAND2X1 U18 ( .A(d[5]), .B(en), .Z(n38) );
  NAND2X1 U19 ( .A(q[5]), .B(n3), .Z(n39) );
  NAND2X1 U20 ( .A(n37), .B(n36), .Z(n27) );
  NAND2X1 U21 ( .A(d[6]), .B(en), .Z(n36) );
  NAND2X1 U22 ( .A(q[6]), .B(n3), .Z(n37) );
  NAND2X1 U23 ( .A(n35), .B(n34), .Z(n26) );
  NAND2X1 U24 ( .A(d[7]), .B(en), .Z(n34) );
  NAND2X1 U25 ( .A(q[7]), .B(n3), .Z(n35) );
  INVX2 U26 ( .A(en), .Z(n3) );
endmodule


module flopen_WIDTH8_2 ( clk, en, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk, en;
  wire   n3, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49;

  DFFQX1 \q_reg[7]  ( .D(n26), .CLK(clk), .Q(q[7]) );
  DFFQX1 \q_reg[6]  ( .D(n27), .CLK(clk), .Q(q[6]) );
  DFFQX1 \q_reg[5]  ( .D(n28), .CLK(clk), .Q(q[5]) );
  DFFQX1 \q_reg[4]  ( .D(n29), .CLK(clk), .Q(q[4]) );
  DFFQX1 \q_reg[3]  ( .D(n30), .CLK(clk), .Q(q[3]) );
  DFFQX1 \q_reg[2]  ( .D(n31), .CLK(clk), .Q(q[2]) );
  DFFQX1 \q_reg[1]  ( .D(n32), .CLK(clk), .Q(q[1]) );
  DFFQX1 \q_reg[0]  ( .D(n33), .CLK(clk), .Q(q[0]) );
  NAND2X1 U2 ( .A(n49), .B(n48), .Z(n33) );
  NAND2X1 U3 ( .A(en), .B(d[0]), .Z(n48) );
  NAND2X1 U4 ( .A(q[0]), .B(n3), .Z(n49) );
  NAND2X1 U5 ( .A(n47), .B(n46), .Z(n32) );
  NAND2X1 U6 ( .A(d[1]), .B(en), .Z(n46) );
  NAND2X1 U7 ( .A(q[1]), .B(n3), .Z(n47) );
  NAND2X1 U8 ( .A(n45), .B(n44), .Z(n31) );
  NAND2X1 U9 ( .A(d[2]), .B(en), .Z(n44) );
  NAND2X1 U10 ( .A(q[2]), .B(n3), .Z(n45) );
  NAND2X1 U11 ( .A(n43), .B(n42), .Z(n30) );
  NAND2X1 U12 ( .A(d[3]), .B(en), .Z(n42) );
  NAND2X1 U13 ( .A(q[3]), .B(n3), .Z(n43) );
  NAND2X1 U14 ( .A(n41), .B(n40), .Z(n29) );
  NAND2X1 U15 ( .A(d[4]), .B(en), .Z(n40) );
  NAND2X1 U16 ( .A(q[4]), .B(n3), .Z(n41) );
  NAND2X1 U17 ( .A(n39), .B(n38), .Z(n28) );
  NAND2X1 U18 ( .A(d[5]), .B(en), .Z(n38) );
  NAND2X1 U19 ( .A(q[5]), .B(n3), .Z(n39) );
  NAND2X1 U20 ( .A(n37), .B(n36), .Z(n27) );
  NAND2X1 U21 ( .A(d[6]), .B(en), .Z(n36) );
  NAND2X1 U22 ( .A(q[6]), .B(n3), .Z(n37) );
  NAND2X1 U23 ( .A(n35), .B(n34), .Z(n26) );
  NAND2X1 U24 ( .A(d[7]), .B(en), .Z(n34) );
  NAND2X1 U25 ( .A(q[7]), .B(n3), .Z(n35) );
  INVX2 U26 ( .A(en), .Z(n3) );
endmodule


module flopen_WIDTH8_1 ( clk, en, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk, en;
  wire   n3, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49;

  DFFQX1 \q_reg[7]  ( .D(n26), .CLK(clk), .Q(q[7]) );
  DFFQX1 \q_reg[6]  ( .D(n27), .CLK(clk), .Q(q[6]) );
  DFFQX1 \q_reg[5]  ( .D(n28), .CLK(clk), .Q(q[5]) );
  DFFQX1 \q_reg[4]  ( .D(n29), .CLK(clk), .Q(q[4]) );
  DFFQX1 \q_reg[3]  ( .D(n30), .CLK(clk), .Q(q[3]) );
  DFFQX1 \q_reg[2]  ( .D(n31), .CLK(clk), .Q(q[2]) );
  DFFQX1 \q_reg[1]  ( .D(n32), .CLK(clk), .Q(q[1]) );
  DFFQX1 \q_reg[0]  ( .D(n33), .CLK(clk), .Q(q[0]) );
  NAND2X1 U2 ( .A(n49), .B(n48), .Z(n33) );
  NAND2X1 U3 ( .A(en), .B(d[0]), .Z(n48) );
  NAND2X1 U4 ( .A(q[0]), .B(n3), .Z(n49) );
  NAND2X1 U5 ( .A(n47), .B(n46), .Z(n32) );
  NAND2X1 U6 ( .A(d[1]), .B(en), .Z(n46) );
  NAND2X1 U7 ( .A(q[1]), .B(n3), .Z(n47) );
  NAND2X1 U8 ( .A(n45), .B(n44), .Z(n31) );
  NAND2X1 U9 ( .A(d[2]), .B(en), .Z(n44) );
  NAND2X1 U10 ( .A(q[2]), .B(n3), .Z(n45) );
  NAND2X1 U11 ( .A(n43), .B(n42), .Z(n30) );
  NAND2X1 U12 ( .A(d[3]), .B(en), .Z(n42) );
  NAND2X1 U13 ( .A(q[3]), .B(n3), .Z(n43) );
  NAND2X1 U14 ( .A(n41), .B(n40), .Z(n29) );
  NAND2X1 U15 ( .A(d[4]), .B(en), .Z(n40) );
  NAND2X1 U16 ( .A(q[4]), .B(n3), .Z(n41) );
  NAND2X1 U17 ( .A(n39), .B(n38), .Z(n28) );
  NAND2X1 U18 ( .A(d[5]), .B(en), .Z(n38) );
  NAND2X1 U19 ( .A(q[5]), .B(n3), .Z(n39) );
  NAND2X1 U20 ( .A(n37), .B(n36), .Z(n27) );
  NAND2X1 U21 ( .A(d[6]), .B(en), .Z(n36) );
  NAND2X1 U22 ( .A(q[6]), .B(n3), .Z(n37) );
  NAND2X1 U23 ( .A(n35), .B(n34), .Z(n26) );
  NAND2X1 U24 ( .A(d[7]), .B(en), .Z(n34) );
  NAND2X1 U25 ( .A(q[7]), .B(n3), .Z(n35) );
  INVX2 U26 ( .A(en), .Z(n3) );
endmodule


module flopenr_WIDTH8 ( clk, reset, en, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk, reset, en;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n1;

  DFFQX1 \q_reg[7]  ( .D(n27), .CLK(clk), .Q(q[7]) );
  DFFQX1 \q_reg[6]  ( .D(n26), .CLK(clk), .Q(q[6]) );
  DFFQX1 \q_reg[5]  ( .D(n25), .CLK(clk), .Q(q[5]) );
  DFFQX1 \q_reg[4]  ( .D(n24), .CLK(clk), .Q(q[4]) );
  DFFQX1 \q_reg[3]  ( .D(n23), .CLK(clk), .Q(q[3]) );
  DFFQX1 \q_reg[2]  ( .D(n22), .CLK(clk), .Q(q[2]) );
  DFFQX1 \q_reg[1]  ( .D(n21), .CLK(clk), .Q(q[1]) );
  DFFQX1 \q_reg[0]  ( .D(n20), .CLK(clk), .Q(q[0]) );
  NAND2X1 U4 ( .A(n2), .B(n3), .Z(n20) );
  NAND2X1 U5 ( .A(d[0]), .B(n4), .Z(n3) );
  NAND2X1 U6 ( .A(q[0]), .B(n5), .Z(n2) );
  NAND2X1 U7 ( .A(n6), .B(n7), .Z(n21) );
  NAND2X1 U8 ( .A(d[1]), .B(n4), .Z(n7) );
  NAND2X1 U9 ( .A(q[1]), .B(n5), .Z(n6) );
  NAND2X1 U10 ( .A(n8), .B(n9), .Z(n22) );
  NAND2X1 U11 ( .A(d[2]), .B(n4), .Z(n9) );
  NAND2X1 U12 ( .A(q[2]), .B(n5), .Z(n8) );
  NAND2X1 U13 ( .A(n10), .B(n11), .Z(n23) );
  NAND2X1 U14 ( .A(d[3]), .B(n4), .Z(n11) );
  NAND2X1 U15 ( .A(q[3]), .B(n5), .Z(n10) );
  NAND2X1 U16 ( .A(n12), .B(n13), .Z(n24) );
  NAND2X1 U17 ( .A(d[4]), .B(n4), .Z(n13) );
  NAND2X1 U18 ( .A(q[4]), .B(n5), .Z(n12) );
  NAND2X1 U19 ( .A(n14), .B(n15), .Z(n25) );
  NAND2X1 U20 ( .A(d[5]), .B(n4), .Z(n15) );
  NAND2X1 U21 ( .A(q[5]), .B(n5), .Z(n14) );
  NAND2X1 U22 ( .A(n16), .B(n17), .Z(n26) );
  NAND2X1 U23 ( .A(d[6]), .B(n4), .Z(n17) );
  NAND2X1 U24 ( .A(q[6]), .B(n5), .Z(n16) );
  NAND2X1 U25 ( .A(n18), .B(n19), .Z(n27) );
  NAND2X1 U26 ( .A(d[7]), .B(n4), .Z(n19) );
  NAND2X1 U27 ( .A(q[7]), .B(n5), .Z(n18) );
  NOR2X1 U28 ( .A(reset), .B(n4), .Z(n5) );
  NOR2X1 U29 ( .A(n1), .B(reset), .Z(n4) );
  INVX2 U3 ( .A(en), .Z(n1) );
endmodule


module flop_WIDTH8_0 ( clk, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk;


  DFFQX1 \q_reg[7]  ( .D(d[7]), .CLK(clk), .Q(q[7]) );
  DFFQX1 \q_reg[6]  ( .D(d[6]), .CLK(clk), .Q(q[6]) );
  DFFQX1 \q_reg[5]  ( .D(d[5]), .CLK(clk), .Q(q[5]) );
  DFFQX1 \q_reg[4]  ( .D(d[4]), .CLK(clk), .Q(q[4]) );
  DFFQX1 \q_reg[3]  ( .D(d[3]), .CLK(clk), .Q(q[3]) );
  DFFQX1 \q_reg[2]  ( .D(d[2]), .CLK(clk), .Q(q[2]) );
  DFFQX1 \q_reg[1]  ( .D(d[1]), .CLK(clk), .Q(q[1]) );
  DFFQX1 \q_reg[0]  ( .D(d[0]), .CLK(clk), .Q(q[0]) );
endmodule


module flop_WIDTH8_3 ( clk, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk;


  DFFQX1 \q_reg[7]  ( .D(d[7]), .CLK(clk), .Q(q[7]) );
  DFFQX1 \q_reg[6]  ( .D(d[6]), .CLK(clk), .Q(q[6]) );
  DFFQX1 \q_reg[5]  ( .D(d[5]), .CLK(clk), .Q(q[5]) );
  DFFQX1 \q_reg[4]  ( .D(d[4]), .CLK(clk), .Q(q[4]) );
  DFFQX1 \q_reg[3]  ( .D(d[3]), .CLK(clk), .Q(q[3]) );
  DFFQX1 \q_reg[2]  ( .D(d[2]), .CLK(clk), .Q(q[2]) );
  DFFQX1 \q_reg[1]  ( .D(d[1]), .CLK(clk), .Q(q[1]) );
  DFFQX1 \q_reg[0]  ( .D(d[0]), .CLK(clk), .Q(q[0]) );
endmodule


module flop_WIDTH8_2 ( clk, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk;


  DFFQX1 \q_reg[7]  ( .D(d[7]), .CLK(clk), .Q(q[7]) );
  DFFQX1 \q_reg[6]  ( .D(d[6]), .CLK(clk), .Q(q[6]) );
  DFFQX1 \q_reg[5]  ( .D(d[5]), .CLK(clk), .Q(q[5]) );
  DFFQX1 \q_reg[4]  ( .D(d[4]), .CLK(clk), .Q(q[4]) );
  DFFQX1 \q_reg[3]  ( .D(d[3]), .CLK(clk), .Q(q[3]) );
  DFFQX1 \q_reg[2]  ( .D(d[2]), .CLK(clk), .Q(q[2]) );
  DFFQX1 \q_reg[1]  ( .D(d[1]), .CLK(clk), .Q(q[1]) );
  DFFQX1 \q_reg[0]  ( .D(d[0]), .CLK(clk), .Q(q[0]) );
endmodule


module flop_WIDTH8_1 ( clk, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk;


  DFFQX1 \q_reg[7]  ( .D(d[7]), .CLK(clk), .Q(q[7]) );
  DFFQX1 \q_reg[6]  ( .D(d[6]), .CLK(clk), .Q(q[6]) );
  DFFQX1 \q_reg[5]  ( .D(d[5]), .CLK(clk), .Q(q[5]) );
  DFFQX1 \q_reg[4]  ( .D(d[4]), .CLK(clk), .Q(q[4]) );
  DFFQX1 \q_reg[3]  ( .D(d[3]), .CLK(clk), .Q(q[3]) );
  DFFQX1 \q_reg[2]  ( .D(d[2]), .CLK(clk), .Q(q[2]) );
  DFFQX1 \q_reg[1]  ( .D(d[1]), .CLK(clk), .Q(q[1]) );
  DFFQX1 \q_reg[0]  ( .D(d[0]), .CLK(clk), .Q(q[0]) );
endmodule


module mux2_WIDTH8_0 ( d0, d1, s, y );
  input [7:0] d0;
  input [7:0] d1;
  output [7:0] y;
  input s;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n1;

  NAND2X1 U2 ( .A(n2), .B(n3), .Z(y[7]) );
  NAND2X1 U3 ( .A(d0[7]), .B(n1), .Z(n3) );
  NAND2X1 U4 ( .A(s), .B(d1[7]), .Z(n2) );
  NAND2X1 U5 ( .A(n4), .B(n5), .Z(y[6]) );
  NAND2X1 U6 ( .A(d0[6]), .B(n1), .Z(n5) );
  NAND2X1 U7 ( .A(d1[6]), .B(s), .Z(n4) );
  NAND2X1 U8 ( .A(n6), .B(n7), .Z(y[5]) );
  NAND2X1 U9 ( .A(d0[5]), .B(n1), .Z(n7) );
  NAND2X1 U10 ( .A(d1[5]), .B(s), .Z(n6) );
  NAND2X1 U11 ( .A(n8), .B(n9), .Z(y[4]) );
  NAND2X1 U12 ( .A(d0[4]), .B(n1), .Z(n9) );
  NAND2X1 U13 ( .A(d1[4]), .B(s), .Z(n8) );
  NAND2X1 U14 ( .A(n10), .B(n11), .Z(y[3]) );
  NAND2X1 U15 ( .A(d0[3]), .B(n1), .Z(n11) );
  NAND2X1 U16 ( .A(d1[3]), .B(s), .Z(n10) );
  NAND2X1 U17 ( .A(n12), .B(n13), .Z(y[2]) );
  NAND2X1 U18 ( .A(d0[2]), .B(n1), .Z(n13) );
  NAND2X1 U19 ( .A(d1[2]), .B(s), .Z(n12) );
  NAND2X1 U20 ( .A(n14), .B(n15), .Z(y[1]) );
  NAND2X1 U21 ( .A(d0[1]), .B(n1), .Z(n15) );
  NAND2X1 U22 ( .A(d1[1]), .B(s), .Z(n14) );
  NAND2X1 U23 ( .A(n16), .B(n17), .Z(y[0]) );
  NAND2X1 U24 ( .A(d0[0]), .B(n1), .Z(n17) );
  NAND2X1 U25 ( .A(d1[0]), .B(s), .Z(n16) );
  INVX2 U1 ( .A(s), .Z(n1) );
endmodule


module mux2_WIDTH8_3 ( d0, d1, s, y );
  input [7:0] d0;
  input [7:0] d1;
  output [7:0] y;
  input s;
  wire   n1, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33;

  NAND2X1 U2 ( .A(n33), .B(n32), .Z(y[7]) );
  NAND2X1 U3 ( .A(d0[7]), .B(n1), .Z(n32) );
  NAND2X1 U4 ( .A(s), .B(d1[7]), .Z(n33) );
  NAND2X1 U5 ( .A(n31), .B(n30), .Z(y[6]) );
  NAND2X1 U6 ( .A(d0[6]), .B(n1), .Z(n30) );
  NAND2X1 U7 ( .A(d1[6]), .B(s), .Z(n31) );
  NAND2X1 U8 ( .A(n29), .B(n28), .Z(y[5]) );
  NAND2X1 U9 ( .A(d0[5]), .B(n1), .Z(n28) );
  NAND2X1 U10 ( .A(d1[5]), .B(s), .Z(n29) );
  NAND2X1 U11 ( .A(n27), .B(n26), .Z(y[4]) );
  NAND2X1 U12 ( .A(d0[4]), .B(n1), .Z(n26) );
  NAND2X1 U13 ( .A(d1[4]), .B(s), .Z(n27) );
  NAND2X1 U14 ( .A(n25), .B(n24), .Z(y[3]) );
  NAND2X1 U15 ( .A(d0[3]), .B(n1), .Z(n24) );
  NAND2X1 U16 ( .A(d1[3]), .B(s), .Z(n25) );
  NAND2X1 U17 ( .A(n23), .B(n22), .Z(y[2]) );
  NAND2X1 U18 ( .A(d0[2]), .B(n1), .Z(n22) );
  NAND2X1 U19 ( .A(d1[2]), .B(s), .Z(n23) );
  NAND2X1 U20 ( .A(n21), .B(n20), .Z(y[1]) );
  NAND2X1 U21 ( .A(d0[1]), .B(n1), .Z(n20) );
  NAND2X1 U22 ( .A(d1[1]), .B(s), .Z(n21) );
  NAND2X1 U23 ( .A(n19), .B(n18), .Z(y[0]) );
  NAND2X1 U24 ( .A(d0[0]), .B(n1), .Z(n18) );
  NAND2X1 U25 ( .A(d1[0]), .B(s), .Z(n19) );
  INVX2 U1 ( .A(s), .Z(n1) );
endmodule


module mux4_WIDTH8 ( d0, d1, d2, d3, s, y );
  input [7:0] d0;
  input [7:0] d1;
  input [7:0] d2;
  input [7:0] d3;
  input [1:0] s;
  output [7:0] y;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n1, n2;

  NAND3X1 U3 ( .A(n3), .B(n4), .C(n5), .Z(y[7]) );
  AND2X1 U4 ( .A(n6), .B(n7), .Z(n5) );
  NAND2X1 U5 ( .A(d1[7]), .B(n8), .Z(n7) );
  NAND2X1 U6 ( .A(d0[7]), .B(n9), .Z(n6) );
  NAND2X1 U7 ( .A(d3[7]), .B(n10), .Z(n4) );
  NAND2X1 U8 ( .A(d2[7]), .B(n11), .Z(n3) );
  NAND3X1 U9 ( .A(n12), .B(n13), .C(n14), .Z(y[6]) );
  AND2X1 U10 ( .A(n15), .B(n16), .Z(n14) );
  NAND2X1 U11 ( .A(d1[6]), .B(n8), .Z(n16) );
  NAND2X1 U12 ( .A(d0[6]), .B(n9), .Z(n15) );
  NAND2X1 U13 ( .A(d3[6]), .B(n10), .Z(n13) );
  NAND2X1 U14 ( .A(d2[6]), .B(n11), .Z(n12) );
  NAND3X1 U15 ( .A(n17), .B(n18), .C(n19), .Z(y[5]) );
  AND2X1 U16 ( .A(n20), .B(n21), .Z(n19) );
  NAND2X1 U17 ( .A(d1[5]), .B(n8), .Z(n21) );
  NAND2X1 U18 ( .A(d0[5]), .B(n9), .Z(n20) );
  NAND2X1 U19 ( .A(d3[5]), .B(n10), .Z(n18) );
  NAND2X1 U20 ( .A(d2[5]), .B(n11), .Z(n17) );
  NAND3X1 U21 ( .A(n22), .B(n23), .C(n24), .Z(y[4]) );
  AND2X1 U22 ( .A(n25), .B(n26), .Z(n24) );
  NAND2X1 U23 ( .A(d1[4]), .B(n8), .Z(n26) );
  NAND2X1 U24 ( .A(d0[4]), .B(n9), .Z(n25) );
  NAND2X1 U25 ( .A(d3[4]), .B(n10), .Z(n23) );
  NAND2X1 U26 ( .A(d2[4]), .B(n11), .Z(n22) );
  NAND3X1 U27 ( .A(n27), .B(n28), .C(n29), .Z(y[3]) );
  AND2X1 U28 ( .A(n30), .B(n31), .Z(n29) );
  NAND2X1 U29 ( .A(d1[3]), .B(n8), .Z(n31) );
  NAND2X1 U30 ( .A(d0[3]), .B(n9), .Z(n30) );
  NAND2X1 U31 ( .A(d3[3]), .B(n10), .Z(n28) );
  NAND2X1 U32 ( .A(d2[3]), .B(n11), .Z(n27) );
  NAND3X1 U33 ( .A(n32), .B(n33), .C(n34), .Z(y[2]) );
  AND2X1 U34 ( .A(n35), .B(n36), .Z(n34) );
  NAND2X1 U35 ( .A(d1[2]), .B(n8), .Z(n36) );
  NAND2X1 U36 ( .A(d0[2]), .B(n9), .Z(n35) );
  NAND2X1 U37 ( .A(d3[2]), .B(n10), .Z(n33) );
  NAND2X1 U38 ( .A(d2[2]), .B(n11), .Z(n32) );
  NAND3X1 U39 ( .A(n37), .B(n38), .C(n39), .Z(y[1]) );
  AND2X1 U40 ( .A(n40), .B(n41), .Z(n39) );
  NAND2X1 U41 ( .A(d1[1]), .B(n8), .Z(n41) );
  NAND2X1 U42 ( .A(d0[1]), .B(n9), .Z(n40) );
  NAND2X1 U43 ( .A(d3[1]), .B(n10), .Z(n38) );
  NAND2X1 U44 ( .A(d2[1]), .B(n11), .Z(n37) );
  NAND3X1 U45 ( .A(n42), .B(n43), .C(n44), .Z(y[0]) );
  AND2X1 U46 ( .A(n45), .B(n46), .Z(n44) );
  NAND2X1 U47 ( .A(d1[0]), .B(n8), .Z(n46) );
  NOR2X1 U48 ( .A(n1), .B(s[1]), .Z(n8) );
  NAND2X1 U49 ( .A(d0[0]), .B(n9), .Z(n45) );
  NOR2X1 U50 ( .A(s[0]), .B(s[1]), .Z(n9) );
  NAND2X1 U51 ( .A(d3[0]), .B(n10), .Z(n43) );
  NOR2X1 U52 ( .A(n2), .B(n1), .Z(n10) );
  NAND2X1 U53 ( .A(d2[0]), .B(n11), .Z(n42) );
  NOR2X1 U54 ( .A(n2), .B(s[0]), .Z(n11) );
  INVX2 U1 ( .A(s[0]), .Z(n1) );
  INVX2 U2 ( .A(s[1]), .Z(n2) );
endmodule


module mux3_WIDTH8 ( d0, d1, d2, s, y );
  input [7:0] d0;
  input [7:0] d1;
  input [7:0] d2;
  input [1:0] s;
  output [7:0] y;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n1;

  NAND3X1 U2 ( .A(n2), .B(n3), .C(n4), .Z(y[7]) );
  NAND2X1 U3 ( .A(s[1]), .B(d2[7]), .Z(n4) );
  NAND2X1 U4 ( .A(d1[7]), .B(n5), .Z(n3) );
  NAND2X1 U5 ( .A(d0[7]), .B(n6), .Z(n2) );
  NAND3X1 U6 ( .A(n7), .B(n8), .C(n9), .Z(y[6]) );
  NAND2X1 U7 ( .A(d2[6]), .B(s[1]), .Z(n9) );
  NAND2X1 U8 ( .A(d1[6]), .B(n5), .Z(n8) );
  NAND2X1 U9 ( .A(d0[6]), .B(n6), .Z(n7) );
  NAND3X1 U10 ( .A(n10), .B(n11), .C(n12), .Z(y[5]) );
  NAND2X1 U11 ( .A(d2[5]), .B(s[1]), .Z(n12) );
  NAND2X1 U12 ( .A(d1[5]), .B(n5), .Z(n11) );
  NAND2X1 U13 ( .A(d0[5]), .B(n6), .Z(n10) );
  NAND3X1 U14 ( .A(n13), .B(n14), .C(n15), .Z(y[4]) );
  NAND2X1 U15 ( .A(d2[4]), .B(s[1]), .Z(n15) );
  NAND2X1 U16 ( .A(d1[4]), .B(n5), .Z(n14) );
  NAND2X1 U17 ( .A(d0[4]), .B(n6), .Z(n13) );
  NAND3X1 U18 ( .A(n16), .B(n17), .C(n18), .Z(y[3]) );
  NAND2X1 U19 ( .A(d2[3]), .B(s[1]), .Z(n18) );
  NAND2X1 U20 ( .A(d1[3]), .B(n5), .Z(n17) );
  NAND2X1 U21 ( .A(d0[3]), .B(n6), .Z(n16) );
  NAND3X1 U22 ( .A(n19), .B(n20), .C(n21), .Z(y[2]) );
  NAND2X1 U23 ( .A(d2[2]), .B(s[1]), .Z(n21) );
  NAND2X1 U24 ( .A(d1[2]), .B(n5), .Z(n20) );
  NAND2X1 U25 ( .A(d0[2]), .B(n6), .Z(n19) );
  NAND3X1 U26 ( .A(n22), .B(n23), .C(n24), .Z(y[1]) );
  NAND2X1 U27 ( .A(d2[1]), .B(s[1]), .Z(n24) );
  NAND2X1 U28 ( .A(d1[1]), .B(n5), .Z(n23) );
  NAND2X1 U29 ( .A(d0[1]), .B(n6), .Z(n22) );
  NAND3X1 U30 ( .A(n25), .B(n26), .C(n27), .Z(y[0]) );
  NAND2X1 U31 ( .A(d2[0]), .B(s[1]), .Z(n27) );
  NAND2X1 U32 ( .A(d1[0]), .B(n5), .Z(n26) );
  NOR2X1 U33 ( .A(n1), .B(s[1]), .Z(n5) );
  NAND2X1 U34 ( .A(d0[0]), .B(n6), .Z(n25) );
  NOR2X1 U35 ( .A(s[0]), .B(s[1]), .Z(n6) );
  INVX2 U1 ( .A(s[0]), .Z(n1) );
endmodule


module mux2_WIDTH8_2 ( d0, d1, s, y );
  input [7:0] d0;
  input [7:0] d1;
  output [7:0] y;
  input s;
  wire   n1, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33;

  NAND2X1 U2 ( .A(n33), .B(n32), .Z(y[7]) );
  NAND2X1 U3 ( .A(d0[7]), .B(n1), .Z(n32) );
  NAND2X1 U4 ( .A(s), .B(d1[7]), .Z(n33) );
  NAND2X1 U5 ( .A(n31), .B(n30), .Z(y[6]) );
  NAND2X1 U6 ( .A(d0[6]), .B(n1), .Z(n30) );
  NAND2X1 U7 ( .A(d1[6]), .B(s), .Z(n31) );
  NAND2X1 U8 ( .A(n29), .B(n28), .Z(y[5]) );
  NAND2X1 U9 ( .A(d0[5]), .B(n1), .Z(n28) );
  NAND2X1 U10 ( .A(d1[5]), .B(s), .Z(n29) );
  NAND2X1 U11 ( .A(n27), .B(n26), .Z(y[4]) );
  NAND2X1 U12 ( .A(d0[4]), .B(n1), .Z(n26) );
  NAND2X1 U13 ( .A(d1[4]), .B(s), .Z(n27) );
  NAND2X1 U14 ( .A(n25), .B(n24), .Z(y[3]) );
  NAND2X1 U15 ( .A(d0[3]), .B(n1), .Z(n24) );
  NAND2X1 U16 ( .A(d1[3]), .B(s), .Z(n25) );
  NAND2X1 U17 ( .A(n23), .B(n22), .Z(y[2]) );
  NAND2X1 U18 ( .A(d0[2]), .B(n1), .Z(n22) );
  NAND2X1 U19 ( .A(d1[2]), .B(s), .Z(n23) );
  NAND2X1 U20 ( .A(n21), .B(n20), .Z(y[1]) );
  NAND2X1 U21 ( .A(d0[1]), .B(n1), .Z(n20) );
  NAND2X1 U22 ( .A(d1[1]), .B(s), .Z(n21) );
  NAND2X1 U23 ( .A(n19), .B(n18), .Z(y[0]) );
  NAND2X1 U24 ( .A(d0[0]), .B(n1), .Z(n18) );
  NAND2X1 U25 ( .A(d1[0]), .B(s), .Z(n19) );
  INVX2 U1 ( .A(s), .Z(n1) );
endmodule


module regfile_WIDTH8_REGBITS3 ( clk, regwrite, ra1, ra2, wa, wd, rd1, rd2 );
  input [2:0] ra1;
  input [2:0] ra2;
  input [2:0] wa;
  input [7:0] wd;
  output [7:0] rd1;
  output [7:0] rd2;
  input clk, regwrite;
  wire   \*Logic0* ;
  assign rd2[7] = rd1[7];
  assign rd2[6] = rd1[6];
  assign rd2[5] = rd1[5];
  assign rd2[4] = rd1[4];
  assign rd2[3] = rd1[3];
  assign rd2[2] = rd1[2];
  assign rd2[1] = rd1[1];
  assign rd2[0] = rd1[0];

  rf2hsm1wm1 regfile ( .AB(wa), .DB(wd), .AA(wa), .WENB({regwrite, regwrite, 
        regwrite, regwrite, regwrite, regwrite, regwrite, regwrite}), .QA(rd1), 
        .CENB(\*Logic0* ), .CENA(\*Logic0* ), .CLKB(clk), .CLKA(clk) );
  TIE0 U2 ( .Z(\*Logic0* ) );
endmodule


module andN ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  output [7:0] y;


  AND2X1 U1 ( .A(b[7]), .B(a[7]), .Z(y[7]) );
  AND2X1 U2 ( .A(b[6]), .B(a[6]), .Z(y[6]) );
  AND2X1 U3 ( .A(b[5]), .B(a[5]), .Z(y[5]) );
  AND2X1 U4 ( .A(b[4]), .B(a[4]), .Z(y[4]) );
  AND2X1 U5 ( .A(b[3]), .B(a[3]), .Z(y[3]) );
  AND2X1 U6 ( .A(b[2]), .B(a[2]), .Z(y[2]) );
  AND2X1 U7 ( .A(b[1]), .B(a[1]), .Z(y[1]) );
  AND2X1 U8 ( .A(b[0]), .B(a[0]), .Z(y[0]) );
endmodule


module orN ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  output [7:0] y;


  OR2X1 U1 ( .A(a[7]), .B(b[7]), .Z(y[7]) );
  OR2X1 U2 ( .A(a[6]), .B(b[6]), .Z(y[6]) );
  OR2X1 U3 ( .A(a[5]), .B(b[5]), .Z(y[5]) );
  OR2X1 U4 ( .A(a[4]), .B(b[4]), .Z(y[4]) );
  OR2X1 U5 ( .A(a[3]), .B(b[3]), .Z(y[3]) );
  OR2X1 U6 ( .A(a[2]), .B(b[2]), .Z(y[2]) );
  OR2X1 U7 ( .A(a[1]), .B(b[1]), .Z(y[1]) );
  OR2X1 U8 ( .A(a[0]), .B(b[0]), .Z(y[0]) );
endmodule


module xorN ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  output [7:0] y;


  XOR2X1 U1 ( .A(b[7]), .B(a[7]), .Z(y[7]) );
  XOR2X1 U2 ( .A(b[6]), .B(a[6]), .Z(y[6]) );
  XOR2X1 U3 ( .A(b[5]), .B(a[5]), .Z(y[5]) );
  XOR2X1 U4 ( .A(b[4]), .B(a[4]), .Z(y[4]) );
  XOR2X1 U5 ( .A(b[3]), .B(a[3]), .Z(y[3]) );
  XOR2X1 U6 ( .A(b[2]), .B(a[2]), .Z(y[2]) );
  XOR2X1 U7 ( .A(b[1]), .B(a[1]), .Z(y[1]) );
  XOR2X1 U8 ( .A(b[0]), .B(a[0]), .Z(y[0]) );
endmodule


module inv ( a, y );
  input [7:0] a;
  output [7:0] y;


  INVX2 U1 ( .A(a[1]), .Z(y[1]) );
  INVX2 U2 ( .A(a[0]), .Z(y[0]) );
  INVX2 U3 ( .A(a[2]), .Z(y[2]) );
  INVX2 U4 ( .A(a[7]), .Z(y[7]) );
  INVX2 U5 ( .A(a[6]), .Z(y[6]) );
  INVX2 U6 ( .A(a[5]), .Z(y[5]) );
  INVX2 U7 ( .A(a[4]), .Z(y[4]) );
  INVX2 U8 ( .A(a[3]), .Z(y[3]) );
endmodule


module mux2_WIDTH8_1 ( d0, d1, s, y );
  input [7:0] d0;
  input [7:0] d1;
  output [7:0] y;
  input s;
  wire   n1, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33;

  NAND2X1 U2 ( .A(n33), .B(n32), .Z(y[7]) );
  NAND2X1 U3 ( .A(d0[7]), .B(n1), .Z(n32) );
  NAND2X1 U4 ( .A(s), .B(d1[7]), .Z(n33) );
  NAND2X1 U5 ( .A(n31), .B(n30), .Z(y[6]) );
  NAND2X1 U6 ( .A(d0[6]), .B(n1), .Z(n30) );
  NAND2X1 U7 ( .A(d1[6]), .B(s), .Z(n31) );
  NAND2X1 U8 ( .A(n29), .B(n28), .Z(y[5]) );
  NAND2X1 U9 ( .A(d0[5]), .B(n1), .Z(n28) );
  NAND2X1 U10 ( .A(d1[5]), .B(s), .Z(n29) );
  NAND2X1 U11 ( .A(n27), .B(n26), .Z(y[4]) );
  NAND2X1 U12 ( .A(d0[4]), .B(n1), .Z(n26) );
  NAND2X1 U13 ( .A(d1[4]), .B(s), .Z(n27) );
  NAND2X1 U14 ( .A(n25), .B(n24), .Z(y[3]) );
  NAND2X1 U15 ( .A(d0[3]), .B(n1), .Z(n24) );
  NAND2X1 U16 ( .A(d1[3]), .B(s), .Z(n25) );
  NAND2X1 U17 ( .A(n23), .B(n22), .Z(y[2]) );
  NAND2X1 U18 ( .A(d0[2]), .B(n1), .Z(n22) );
  NAND2X1 U19 ( .A(d1[2]), .B(s), .Z(n23) );
  NAND2X1 U20 ( .A(n21), .B(n20), .Z(y[1]) );
  NAND2X1 U21 ( .A(d0[1]), .B(n1), .Z(n20) );
  NAND2X1 U22 ( .A(d1[1]), .B(s), .Z(n21) );
  NAND2X1 U23 ( .A(n19), .B(n18), .Z(y[0]) );
  NAND2X1 U24 ( .A(d0[0]), .B(n1), .Z(n18) );
  NAND2X1 U25 ( .A(d1[0]), .B(s), .Z(n19) );
  INVX2 U1 ( .A(s), .Z(n1) );
endmodule


module condinv ( a, invert, y );
  input [7:0] a;
  output [7:0] y;
  input invert;

  wire   [7:0] ab;

  inv inverter ( .a(a), .y(ab) );
  mux2_WIDTH8_1 invmux ( .d0(a), .d1(ab), .s(invert), .y(y) );
endmodule


module adder_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n17), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n27), .Z(n4) );
  INVX2 U5 ( .A(A[1]), .Z(n5) );
  INVX2 U6 ( .A(n37), .Z(n6) );
  XOR2X1 U7 ( .A(n7), .B(n8), .Z(SUM[7]) );
  XOR2X1 U8 ( .A(B[7]), .B(A[7]), .Z(n8) );
  NAND2X1 U9 ( .A(n9), .B(n10), .Z(n7) );
  NAND2X1 U10 ( .A(B[6]), .B(n11), .Z(n10) );
  OR2X1 U11 ( .A(n12), .B(A[6]), .Z(n11) );
  NAND2X1 U12 ( .A(A[6]), .B(n12), .Z(n9) );
  XOR2X1 U13 ( .A(n12), .B(n13), .Z(SUM[6]) );
  XOR2X1 U14 ( .A(B[6]), .B(A[6]), .Z(n13) );
  NAND2X1 U15 ( .A(n14), .B(n15), .Z(n12) );
  NAND2X1 U16 ( .A(B[5]), .B(n16), .Z(n15) );
  NAND2X1 U17 ( .A(n2), .B(n1), .Z(n16) );
  NAND2X1 U18 ( .A(A[5]), .B(n17), .Z(n14) );
  XOR2X1 U19 ( .A(n18), .B(n2), .Z(SUM[5]) );
  NAND2X1 U20 ( .A(n19), .B(n20), .Z(n17) );
  NAND2X1 U21 ( .A(B[4]), .B(n21), .Z(n20) );
  OR2X1 U22 ( .A(n22), .B(A[4]), .Z(n21) );
  NAND2X1 U23 ( .A(A[4]), .B(n22), .Z(n19) );
  XOR2X1 U24 ( .A(n1), .B(B[5]), .Z(n18) );
  XOR2X1 U25 ( .A(n22), .B(n23), .Z(SUM[4]) );
  XOR2X1 U26 ( .A(B[4]), .B(A[4]), .Z(n23) );
  NAND2X1 U27 ( .A(n24), .B(n25), .Z(n22) );
  NAND2X1 U28 ( .A(B[3]), .B(n26), .Z(n25) );
  NAND2X1 U29 ( .A(n4), .B(n3), .Z(n26) );
  NAND2X1 U30 ( .A(A[3]), .B(n27), .Z(n24) );
  XOR2X1 U31 ( .A(n28), .B(n4), .Z(SUM[3]) );
  NAND2X1 U32 ( .A(n29), .B(n30), .Z(n27) );
  NAND2X1 U33 ( .A(B[2]), .B(n31), .Z(n30) );
  OR2X1 U34 ( .A(n32), .B(A[2]), .Z(n31) );
  NAND2X1 U35 ( .A(A[2]), .B(n32), .Z(n29) );
  XOR2X1 U36 ( .A(n3), .B(B[3]), .Z(n28) );
  XOR2X1 U37 ( .A(n32), .B(n33), .Z(SUM[2]) );
  XOR2X1 U38 ( .A(B[2]), .B(A[2]), .Z(n33) );
  NAND2X1 U39 ( .A(n34), .B(n35), .Z(n32) );
  NAND2X1 U40 ( .A(B[1]), .B(n36), .Z(n35) );
  NAND2X1 U41 ( .A(n6), .B(n5), .Z(n36) );
  NAND2X1 U42 ( .A(A[1]), .B(n37), .Z(n34) );
  XOR2X1 U43 ( .A(n38), .B(n6), .Z(SUM[1]) );
  NAND2X1 U44 ( .A(n39), .B(n40), .Z(n37) );
  NAND2X1 U45 ( .A(CI), .B(n41), .Z(n40) );
  OR2X1 U46 ( .A(B[0]), .B(A[0]), .Z(n41) );
  NAND2X1 U47 ( .A(B[0]), .B(A[0]), .Z(n39) );
  XOR2X1 U48 ( .A(n5), .B(B[1]), .Z(n38) );
  XOR2X1 U49 ( .A(A[0]), .B(n42), .Z(SUM[0]) );
  XOR2X1 U50 ( .A(CI), .B(B[0]), .Z(n42) );
endmodule


module adder ( a, b, cin, y );
  input [7:0] a;
  input [7:0] b;
  output [7:0] y;
  input cin;


  adder_DW01_add_0 add_1_root_add_645_2 ( .A(a), .B(b), .CI(cin), .SUM(y) );
endmodule


module multiplier_trunc_DW_mult_uns_0 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306;

  INVX2 U155 ( .A(b[0]), .Z(n173) );
  INVX2 U156 ( .A(n227), .Z(n174) );
  INVX2 U157 ( .A(n243), .Z(n175) );
  INVX2 U158 ( .A(a[3]), .Z(n176) );
  INVX2 U159 ( .A(n287), .Z(n177) );
  INVX2 U160 ( .A(a[0]), .Z(n178) );
  INVX2 U161 ( .A(b[4]), .Z(n179) );
  XOR2X1 U162 ( .A(n180), .B(n181), .Z(product[7]) );
  XOR2X1 U163 ( .A(n182), .B(n183), .Z(n181) );
  XOR2X1 U164 ( .A(n184), .B(n185), .Z(n183) );
  NOR2X1 U165 ( .A(n186), .B(n187), .Z(n185) );
  NOR2X1 U166 ( .A(n188), .B(n189), .Z(n187) );
  NOR2X1 U167 ( .A(n175), .B(n190), .Z(n186) );
  NAND2X1 U168 ( .A(n191), .B(n192), .Z(n184) );
  NAND2X1 U169 ( .A(n193), .B(n194), .Z(n192) );
  NAND2X1 U170 ( .A(n195), .B(n196), .Z(n191) );
  XOR2X1 U171 ( .A(n197), .B(n198), .Z(n182) );
  XOR2X1 U172 ( .A(n199), .B(n200), .Z(n198) );
  XOR2X1 U173 ( .A(n201), .B(n202), .Z(n200) );
  AND2X1 U174 ( .A(b[3]), .B(a[4]), .Z(n202) );
  NAND2X1 U175 ( .A(b[6]), .B(a[1]), .Z(n201) );
  XOR2X1 U176 ( .A(n203), .B(n204), .Z(n199) );
  NOR2X1 U177 ( .A(n205), .B(n206), .Z(n204) );
  NAND2X1 U178 ( .A(b[7]), .B(a[0]), .Z(n203) );
  XOR2X1 U179 ( .A(n207), .B(n208), .Z(n197) );
  XOR2X1 U180 ( .A(n209), .B(n210), .Z(n208) );
  NAND2X1 U181 ( .A(b[5]), .B(a[2]), .Z(n210) );
  NAND2X1 U182 ( .A(a[5]), .B(b[2]), .Z(n209) );
  XOR2X1 U183 ( .A(n211), .B(n212), .Z(n207) );
  NOR2X1 U184 ( .A(n176), .B(n179), .Z(n212) );
  NAND2X1 U185 ( .A(n213), .B(n214), .Z(n211) );
  NAND2X1 U186 ( .A(n215), .B(n216), .Z(n214) );
  NAND2X1 U187 ( .A(n217), .B(n218), .Z(n213) );
  XOR2X1 U188 ( .A(n219), .B(n220), .Z(n180) );
  XOR2X1 U189 ( .A(n221), .B(n222), .Z(n220) );
  NAND2X1 U190 ( .A(b[1]), .B(a[6]), .Z(n222) );
  NAND2X1 U191 ( .A(b[0]), .B(a[7]), .Z(n221) );
  XOR2X1 U192 ( .A(n223), .B(n224), .Z(n219) );
  NOR2X1 U193 ( .A(n225), .B(n226), .Z(n224) );
  AND2X1 U194 ( .A(n227), .B(n228), .Z(n226) );
  NOR2X1 U195 ( .A(n229), .B(n230), .Z(n225) );
  NAND2X1 U196 ( .A(n231), .B(n232), .Z(n223) );
  NAND2X1 U197 ( .A(n233), .B(n234), .Z(n232) );
  NAND2X1 U198 ( .A(n235), .B(n236), .Z(n231) );
  XOR2X1 U199 ( .A(n234), .B(n233), .Z(product[6]) );
  XOR2X1 U200 ( .A(n236), .B(n235), .Z(n233) );
  XOR2X1 U201 ( .A(n193), .B(n194), .Z(n235) );
  XOR2X1 U202 ( .A(n215), .B(n216), .Z(n194) );
  XOR2X1 U203 ( .A(n217), .B(n218), .Z(n216) );
  AND2X1 U204 ( .A(b[5]), .B(a[1]), .Z(n218) );
  AND2X1 U205 ( .A(b[6]), .B(a[0]), .Z(n217) );
  AND2X1 U206 ( .A(a[4]), .B(b[2]), .Z(n215) );
  XOR2X1 U207 ( .A(n196), .B(n195), .Z(n193) );
  XOR2X1 U208 ( .A(n205), .B(n206), .Z(n195) );
  NAND2X1 U209 ( .A(a[5]), .B(b[1]), .Z(n206) );
  NAND2X1 U210 ( .A(a[6]), .B(b[0]), .Z(n205) );
  NAND2X1 U211 ( .A(n237), .B(n238), .Z(n196) );
  NAND2X1 U212 ( .A(n239), .B(n240), .Z(n238) );
  NAND2X1 U213 ( .A(n241), .B(n242), .Z(n237) );
  XOR2X1 U214 ( .A(n229), .B(n230), .Z(n236) );
  XOR2X1 U215 ( .A(n174), .B(n228), .Z(n230) );
  XOR2X1 U216 ( .A(n190), .B(n175), .Z(n228) );
  XOR2X1 U217 ( .A(n189), .B(n188), .Z(n243) );
  NAND2X1 U218 ( .A(b[3]), .B(a[3]), .Z(n188) );
  NAND2X1 U219 ( .A(b[4]), .B(a[2]), .Z(n189) );
  NAND2X1 U220 ( .A(n244), .B(n245), .Z(n190) );
  NAND2X1 U221 ( .A(n246), .B(n247), .Z(n227) );
  NAND2X1 U222 ( .A(n248), .B(n249), .Z(n247) );
  NAND2X1 U223 ( .A(n250), .B(n251), .Z(n246) );
  AND2X1 U224 ( .A(n252), .B(n253), .Z(n229) );
  NAND2X1 U225 ( .A(n254), .B(n255), .Z(n253) );
  NAND2X1 U226 ( .A(n256), .B(n257), .Z(n252) );
  NAND2X1 U227 ( .A(n258), .B(n259), .Z(n234) );
  NAND2X1 U228 ( .A(n260), .B(n261), .Z(n259) );
  NAND2X1 U229 ( .A(n262), .B(n263), .Z(n258) );
  XOR2X1 U230 ( .A(n261), .B(n260), .Z(product[5]) );
  XOR2X1 U231 ( .A(n262), .B(n263), .Z(n260) );
  XOR2X1 U232 ( .A(n248), .B(n249), .Z(n263) );
  XOR2X1 U233 ( .A(n245), .B(n244), .Z(n249) );
  AND2X1 U234 ( .A(a[4]), .B(b[1]), .Z(n244) );
  AND2X1 U235 ( .A(a[5]), .B(b[0]), .Z(n245) );
  XOR2X1 U236 ( .A(n250), .B(n251), .Z(n248) );
  AND2X1 U237 ( .A(n264), .B(n265), .Z(n251) );
  AND2X1 U238 ( .A(a[3]), .B(b[2]), .Z(n250) );
  XOR2X1 U239 ( .A(n255), .B(n254), .Z(n262) );
  XOR2X1 U240 ( .A(n257), .B(n256), .Z(n254) );
  XOR2X1 U241 ( .A(n239), .B(n240), .Z(n256) );
  XOR2X1 U242 ( .A(n241), .B(n242), .Z(n240) );
  AND2X1 U243 ( .A(b[4]), .B(a[1]), .Z(n242) );
  AND2X1 U244 ( .A(b[5]), .B(a[0]), .Z(n241) );
  AND2X1 U245 ( .A(b[3]), .B(a[2]), .Z(n239) );
  NAND2X1 U246 ( .A(n266), .B(n267), .Z(n257) );
  NAND2X1 U247 ( .A(n268), .B(n269), .Z(n267) );
  NAND2X1 U248 ( .A(n270), .B(n271), .Z(n266) );
  NAND2X1 U249 ( .A(n272), .B(n273), .Z(n255) );
  NAND2X1 U250 ( .A(n274), .B(n275), .Z(n273) );
  NAND2X1 U251 ( .A(n276), .B(n277), .Z(n272) );
  NAND2X1 U252 ( .A(n278), .B(n279), .Z(n261) );
  NAND2X1 U253 ( .A(n280), .B(n281), .Z(n279) );
  NAND2X1 U254 ( .A(n282), .B(n283), .Z(n278) );
  XOR2X1 U255 ( .A(n281), .B(n280), .Z(product[4]) );
  XOR2X1 U256 ( .A(n282), .B(n283), .Z(n280) );
  XOR2X1 U257 ( .A(n268), .B(n269), .Z(n283) );
  XOR2X1 U258 ( .A(n270), .B(n271), .Z(n269) );
  AND2X1 U259 ( .A(b[3]), .B(a[1]), .Z(n271) );
  NOR2X1 U260 ( .A(n179), .B(n178), .Z(n270) );
  AND2X1 U261 ( .A(b[2]), .B(a[2]), .Z(n268) );
  XOR2X1 U262 ( .A(n275), .B(n274), .Z(n282) );
  XOR2X1 U263 ( .A(n276), .B(n277), .Z(n274) );
  XOR2X1 U264 ( .A(n265), .B(n264), .Z(n277) );
  AND2X1 U265 ( .A(a[3]), .B(b[1]), .Z(n264) );
  AND2X1 U266 ( .A(a[4]), .B(b[0]), .Z(n265) );
  AND2X1 U267 ( .A(n284), .B(n285), .Z(n276) );
  NAND2X1 U268 ( .A(n286), .B(n287), .Z(n275) );
  OR2X1 U269 ( .A(n288), .B(n289), .Z(n286) );
  NAND2X1 U270 ( .A(n290), .B(n291), .Z(n281) );
  NAND2X1 U271 ( .A(n292), .B(n293), .Z(n291) );
  NAND2X1 U272 ( .A(n294), .B(n295), .Z(n290) );
  XOR2X1 U273 ( .A(n293), .B(n292), .Z(product[3]) );
  XOR2X1 U274 ( .A(n295), .B(n294), .Z(n292) );
  XOR2X1 U275 ( .A(n177), .B(n296), .Z(n294) );
  XOR2X1 U276 ( .A(n289), .B(n288), .Z(n296) );
  NAND2X1 U277 ( .A(b[3]), .B(a[0]), .Z(n288) );
  NAND2X1 U278 ( .A(b[2]), .B(a[1]), .Z(n289) );
  NAND2X1 U279 ( .A(n297), .B(n298), .Z(n287) );
  XOR2X1 U280 ( .A(n285), .B(n284), .Z(n295) );
  AND2X1 U281 ( .A(a[2]), .B(b[1]), .Z(n284) );
  NOR2X1 U282 ( .A(n176), .B(n173), .Z(n285) );
  NAND2X1 U283 ( .A(n299), .B(n300), .Z(n293) );
  NAND2X1 U284 ( .A(n301), .B(n302), .Z(n300) );
  NAND2X1 U285 ( .A(n303), .B(n304), .Z(n299) );
  XOR2X1 U286 ( .A(n301), .B(n302), .Z(product[2]) );
  XOR2X1 U287 ( .A(n303), .B(n304), .Z(n302) );
  XOR2X1 U288 ( .A(n297), .B(n298), .Z(n304) );
  AND2X1 U289 ( .A(a[1]), .B(b[1]), .Z(n298) );
  AND2X1 U290 ( .A(b[2]), .B(a[0]), .Z(n297) );
  AND2X1 U291 ( .A(a[2]), .B(b[0]), .Z(n303) );
  NOR2X1 U292 ( .A(n305), .B(n306), .Z(n301) );
  XOR2X1 U293 ( .A(n305), .B(n306), .Z(product[1]) );
  NAND2X1 U294 ( .A(a[1]), .B(b[0]), .Z(n306) );
  NAND2X1 U295 ( .A(a[0]), .B(b[1]), .Z(n305) );
  NOR2X1 U296 ( .A(n173), .B(n178), .Z(product[0]) );
endmodule


module multiplier_trunc ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  output [7:0] y;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7;

  multiplier_trunc_DW_mult_uns_0 mult_621 ( .a(a), .b(b), .product({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, y}) );
endmodule


module shiftright ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  output [7:0] y;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24;

  AND2X1 U1 ( .A(a[7]), .B(n3), .Z(n1) );
  INVX2 U2 ( .A(n3), .Z(n2) );
  INVX2 U3 ( .A(b[0]), .Z(n3) );
  INVX2 U4 ( .A(n5), .Z(n4) );
  INVX2 U5 ( .A(b[1]), .Z(n5) );
  INVX2 U6 ( .A(n21), .Z(n6) );
  INVX2 U7 ( .A(n23), .Z(n7) );
  INVX2 U8 ( .A(n22), .Z(n8) );
  INVX2 U9 ( .A(n24), .Z(n9) );
  MUX2X1 U10 ( .A(a[0]), .B(a[1]), .S(n2), .Z(n10) );
  MUX2X1 U11 ( .A(a[2]), .B(a[3]), .S(n2), .Z(n15) );
  MUX2X1 U12 ( .A(n10), .B(n15), .S(n4), .Z(n11) );
  MUX2X1 U13 ( .A(a[4]), .B(a[5]), .S(n2), .Z(n14) );
  MUX2X1 U14 ( .A(a[6]), .B(a[7]), .S(n2), .Z(n16) );
  MUX2X1 U15 ( .A(n14), .B(n16), .S(n4), .Z(n21) );
  MUX2X1 U16 ( .A(n11), .B(n21), .S(b[2]), .Z(y[0]) );
  MUX2X1 U17 ( .A(a[1]), .B(a[2]), .S(n2), .Z(n12) );
  MUX2X1 U18 ( .A(a[3]), .B(a[4]), .S(n2), .Z(n19) );
  MUX2X1 U19 ( .A(n12), .B(n19), .S(n4), .Z(n13) );
  MUX2X1 U20 ( .A(a[5]), .B(a[6]), .S(n2), .Z(n18) );
  MUX2X1 U21 ( .A(n18), .B(n1), .S(n4), .Z(n22) );
  MUX2X1 U22 ( .A(n13), .B(n22), .S(b[2]), .Z(y[1]) );
  MUX2X1 U23 ( .A(n15), .B(n14), .S(n4), .Z(n17) );
  NAND2X1 U24 ( .A(n16), .B(n5), .Z(n23) );
  MUX2X1 U25 ( .A(n17), .B(n7), .S(b[2]), .Z(y[2]) );
  MUX2X1 U26 ( .A(n19), .B(n18), .S(n4), .Z(n20) );
  NAND2X1 U27 ( .A(n1), .B(n5), .Z(n24) );
  MUX2X1 U28 ( .A(n20), .B(n9), .S(b[2]), .Z(y[3]) );
  NOR2X1 U29 ( .A(b[2]), .B(n6), .Z(y[4]) );
  NOR2X1 U30 ( .A(b[2]), .B(n8), .Z(y[5]) );
  NOR2X1 U31 ( .A(b[2]), .B(n23), .Z(y[6]) );
  NOR2X1 U32 ( .A(b[2]), .B(n24), .Z(y[7]) );
endmodule


module shiftleft ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  output [7:0] y;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22;

  INVX2 U1 ( .A(b[0]), .Z(n1) );
  INVX2 U2 ( .A(b[1]), .Z(n2) );
  INVX2 U3 ( .A(n21), .Z(n3) );
  INVX2 U4 ( .A(n17), .Z(n4) );
  INVX2 U5 ( .A(n13), .Z(n5) );
  INVX2 U6 ( .A(n10), .Z(n6) );
  AND2X1 U7 ( .A(a[0]), .B(n1), .Z(n7) );
  NAND2X1 U8 ( .A(n7), .B(n2), .Z(n10) );
  NOR2X1 U9 ( .A(b[2]), .B(n10), .Z(y[0]) );
  MUX2X1 U10 ( .A(a[0]), .B(a[1]), .S(n1), .Z(n8) );
  NAND2X1 U11 ( .A(n8), .B(n2), .Z(n13) );
  NOR2X1 U12 ( .A(b[2]), .B(n13), .Z(y[1]) );
  MUX2X1 U13 ( .A(a[1]), .B(a[2]), .S(n1), .Z(n9) );
  MUX2X1 U14 ( .A(n7), .B(n9), .S(n2), .Z(n17) );
  NOR2X1 U15 ( .A(b[2]), .B(n4), .Z(y[2]) );
  MUX2X1 U16 ( .A(a[3]), .B(a[2]), .S(b[0]), .Z(n12) );
  MUX2X1 U17 ( .A(n8), .B(n12), .S(n2), .Z(n21) );
  NOR2X1 U18 ( .A(b[2]), .B(n3), .Z(y[3]) );
  MUX2X1 U19 ( .A(a[4]), .B(a[3]), .S(b[0]), .Z(n16) );
  MUX2X1 U20 ( .A(n9), .B(n16), .S(n2), .Z(n11) );
  MUX2X1 U21 ( .A(n11), .B(n6), .S(b[2]), .Z(y[4]) );
  MUX2X1 U22 ( .A(a[5]), .B(a[4]), .S(b[0]), .Z(n20) );
  MUX2X1 U23 ( .A(n12), .B(n20), .S(n2), .Z(n14) );
  MUX2X1 U24 ( .A(n14), .B(n5), .S(b[2]), .Z(y[5]) );
  MUX2X1 U25 ( .A(a[5]), .B(a[6]), .S(n1), .Z(n15) );
  MUX2X1 U26 ( .A(n16), .B(n15), .S(n2), .Z(n18) );
  MUX2X1 U27 ( .A(n18), .B(n17), .S(b[2]), .Z(y[6]) );
  MUX2X1 U28 ( .A(a[6]), .B(a[7]), .S(n1), .Z(n19) );
  MUX2X1 U29 ( .A(n20), .B(n19), .S(n2), .Z(n22) );
  MUX2X1 U30 ( .A(n22), .B(n21), .S(b[2]), .Z(y[7]) );
endmodule


module equal ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  output [7:0] y;
  wire   \*Logic0* , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14;
  assign y[1] = \*Logic0* ;
  assign y[2] = \*Logic0* ;
  assign y[3] = \*Logic0* ;
  assign y[4] = \*Logic0* ;
  assign y[5] = \*Logic0* ;
  assign y[6] = \*Logic0* ;
  assign y[7] = \*Logic0* ;

  NOR2X1 U2 ( .A(n1), .B(n2), .Z(y[0]) );
  NAND2X1 U3 ( .A(n3), .B(n4), .Z(n2) );
  NOR2X1 U4 ( .A(n5), .B(n6), .Z(n4) );
  XOR2X1 U5 ( .A(b[2]), .B(a[2]), .Z(n6) );
  XOR2X1 U6 ( .A(b[3]), .B(a[3]), .Z(n5) );
  NOR2X1 U7 ( .A(n7), .B(n8), .Z(n3) );
  XOR2X1 U8 ( .A(b[0]), .B(a[0]), .Z(n8) );
  XOR2X1 U9 ( .A(b[1]), .B(a[1]), .Z(n7) );
  NAND2X1 U10 ( .A(n9), .B(n10), .Z(n1) );
  NOR2X1 U11 ( .A(n11), .B(n12), .Z(n10) );
  XOR2X1 U12 ( .A(b[6]), .B(a[6]), .Z(n12) );
  XOR2X1 U13 ( .A(b[7]), .B(a[7]), .Z(n11) );
  NOR2X1 U14 ( .A(n13), .B(n14), .Z(n9) );
  XOR2X1 U15 ( .A(b[4]), .B(a[4]), .Z(n14) );
  XOR2X1 U16 ( .A(b[5]), .B(a[5]), .Z(n13) );
  TIE0 U17 ( .Z(\*Logic0* ) );
endmodule


module greater ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  output [7:0] y;
  wire   \*Logic0* , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33;
  assign y[1] = \*Logic0* ;
  assign y[2] = \*Logic0* ;
  assign y[3] = \*Logic0* ;
  assign y[4] = \*Logic0* ;
  assign y[5] = \*Logic0* ;
  assign y[6] = \*Logic0* ;
  assign y[7] = \*Logic0* ;

  INVX2 U2 ( .A(b[0]), .Z(n2) );
  INVX2 U3 ( .A(b[2]), .Z(n1) );
  TIE0 U4 ( .Z(\*Logic0* ) );
  OR2X1 U5 ( .A(n29), .B(a[6]), .Z(n3) );
  OR2X1 U6 ( .A(n30), .B(a[7]), .Z(n16) );
  AND2X1 U7 ( .A(n3), .B(n16), .Z(n21) );
  OR2X1 U8 ( .A(n32), .B(b[3]), .Z(n12) );
  OR2X1 U9 ( .A(n1), .B(a[2]), .Z(n8) );
  NAND2X1 U10 ( .A(b[3]), .B(n32), .Z(n9) );
  OR2X1 U11 ( .A(n31), .B(b[1]), .Z(n6) );
  NAND2X1 U12 ( .A(b[1]), .B(n31), .Z(n4) );
  NAND3X1 U13 ( .A(n4), .B(n2), .C(a[0]), .Z(n5) );
  NAND2X1 U14 ( .A(n6), .B(n5), .Z(n7) );
  NAND3X1 U15 ( .A(n8), .B(n9), .C(n7), .Z(n11) );
  NAND3X1 U16 ( .A(n9), .B(n1), .C(a[2]), .Z(n10) );
  NAND3X1 U17 ( .A(n12), .B(n11), .C(n10), .Z(n15) );
  NOR2X1 U18 ( .A(n28), .B(a[5]), .Z(n17) );
  NOR2X1 U19 ( .A(a[4]), .B(n27), .Z(n13) );
  NOR2X1 U20 ( .A(n17), .B(n13), .Z(n14) );
  NAND3X1 U21 ( .A(n21), .B(n15), .C(n14), .Z(n26) );
  NAND3X1 U22 ( .A(n16), .B(n29), .C(a[6]), .Z(n25) );
  NAND2X1 U23 ( .A(a[7]), .B(n30), .Z(n23) );
  NAND2X1 U24 ( .A(a[5]), .B(n28), .Z(n19) );
  NAND3X1 U25 ( .A(n33), .B(n27), .C(a[4]), .Z(n18) );
  NAND2X1 U26 ( .A(n19), .B(n18), .Z(n20) );
  NAND2X1 U27 ( .A(n21), .B(n20), .Z(n22) );
  AND2X1 U28 ( .A(n23), .B(n22), .Z(n24) );
  NAND3X1 U29 ( .A(n26), .B(n25), .C(n24), .Z(y[0]) );
  INVX2 U30 ( .A(b[4]), .Z(n27) );
  INVX2 U31 ( .A(b[5]), .Z(n28) );
  INVX2 U32 ( .A(b[6]), .Z(n29) );
  INVX2 U33 ( .A(b[7]), .Z(n30) );
  INVX2 U34 ( .A(a[1]), .Z(n31) );
  INVX2 U35 ( .A(a[3]), .Z(n32) );
  INVX2 U36 ( .A(n17), .Z(n33) );
endmodule


module greater_oreq ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  output [7:0] y;
  wire   \*Logic0* , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34;
  assign y[1] = \*Logic0* ;
  assign y[2] = \*Logic0* ;
  assign y[3] = \*Logic0* ;
  assign y[4] = \*Logic0* ;
  assign y[5] = \*Logic0* ;
  assign y[6] = \*Logic0* ;
  assign y[7] = \*Logic0* ;

  INVX2 U2 ( .A(b[2]), .Z(n1) );
  TIE0 U3 ( .Z(\*Logic0* ) );
  OR2X1 U4 ( .A(n33), .B(b[3]), .Z(n11) );
  OR2X1 U5 ( .A(n1), .B(a[2]), .Z(n7) );
  NAND2X1 U6 ( .A(b[3]), .B(n33), .Z(n8) );
  OR2X1 U7 ( .A(n32), .B(b[1]), .Z(n5) );
  NAND2X1 U8 ( .A(b[0]), .B(n31), .Z(n3) );
  NAND2X1 U9 ( .A(b[1]), .B(n32), .Z(n2) );
  NAND2X1 U10 ( .A(n3), .B(n2), .Z(n4) );
  NAND2X1 U11 ( .A(n5), .B(n4), .Z(n6) );
  NAND3X1 U12 ( .A(n7), .B(n8), .C(n6), .Z(n10) );
  NAND3X1 U13 ( .A(n8), .B(n1), .C(a[2]), .Z(n9) );
  NAND3X1 U14 ( .A(n11), .B(n10), .C(n9), .Z(n15) );
  OR2X1 U15 ( .A(n28), .B(a[5]), .Z(n18) );
  NOR2X1 U16 ( .A(a[4]), .B(n27), .Z(n13) );
  OR2X1 U17 ( .A(n29), .B(a[6]), .Z(n12) );
  OR2X1 U18 ( .A(n30), .B(a[7]), .Z(n16) );
  NAND2X1 U19 ( .A(n12), .B(n16), .Z(n17) );
  NOR2X1 U20 ( .A(n13), .B(n17), .Z(n14) );
  NAND3X1 U21 ( .A(n15), .B(n18), .C(n14), .Z(n26) );
  NAND3X1 U22 ( .A(n16), .B(n29), .C(a[6]), .Z(n25) );
  NAND2X1 U23 ( .A(a[7]), .B(n30), .Z(n23) );
  NAND2X1 U24 ( .A(a[5]), .B(n28), .Z(n20) );
  NAND3X1 U25 ( .A(n18), .B(n27), .C(a[4]), .Z(n19) );
  NAND2X1 U26 ( .A(n20), .B(n19), .Z(n21) );
  NAND2X1 U27 ( .A(n34), .B(n21), .Z(n22) );
  AND2X1 U28 ( .A(n23), .B(n22), .Z(n24) );
  NAND3X1 U29 ( .A(n26), .B(n25), .C(n24), .Z(y[0]) );
  INVX2 U30 ( .A(b[4]), .Z(n27) );
  INVX2 U31 ( .A(b[5]), .Z(n28) );
  INVX2 U32 ( .A(b[6]), .Z(n29) );
  INVX2 U33 ( .A(b[7]), .Z(n30) );
  INVX2 U34 ( .A(a[0]), .Z(n31) );
  INVX2 U35 ( .A(a[1]), .Z(n32) );
  INVX2 U36 ( .A(a[3]), .Z(n33) );
  INVX2 U37 ( .A(n17), .Z(n34) );
endmodule


module diff ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  output [7:0] y;
  wire   \*Logic0* , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  assign y[1] = \*Logic0* ;
  assign y[2] = \*Logic0* ;
  assign y[3] = \*Logic0* ;
  assign y[4] = \*Logic0* ;
  assign y[5] = \*Logic0* ;
  assign y[6] = \*Logic0* ;
  assign y[7] = \*Logic0* ;

  NAND3X1 U2 ( .A(n1), .B(n2), .C(n3), .Z(y[0]) );
  AND2X1 U3 ( .A(n4), .B(n5), .Z(n3) );
  NOR2X1 U4 ( .A(n6), .B(n7), .Z(n5) );
  XOR2X1 U5 ( .A(b[2]), .B(a[2]), .Z(n7) );
  XOR2X1 U6 ( .A(b[3]), .B(a[3]), .Z(n6) );
  NOR2X1 U7 ( .A(n8), .B(n9), .Z(n4) );
  XOR2X1 U8 ( .A(b[0]), .B(a[0]), .Z(n9) );
  XOR2X1 U9 ( .A(b[1]), .B(a[1]), .Z(n8) );
  NOR2X1 U10 ( .A(n10), .B(n11), .Z(n2) );
  XOR2X1 U11 ( .A(b[6]), .B(a[6]), .Z(n11) );
  XOR2X1 U12 ( .A(b[7]), .B(a[7]), .Z(n10) );
  NOR2X1 U13 ( .A(n12), .B(n13), .Z(n1) );
  XOR2X1 U14 ( .A(b[4]), .B(a[4]), .Z(n13) );
  XOR2X1 U15 ( .A(b[5]), .B(a[5]), .Z(n12) );
  TIE0 U16 ( .Z(\*Logic0* ) );
endmodule


module mux12 ( d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, s, y );
  input [7:0] d0;
  input [7:0] d1;
  input [7:0] d2;
  input [7:0] d3;
  input [7:0] d4;
  input [7:0] d5;
  input [7:0] d6;
  input [7:0] d7;
  input [7:0] d8;
  input [7:0] d9;
  input [7:0] d10;
  input [7:0] d11;
  input [3:0] s;
  output [7:0] y;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10;

  NAND2X1 U11 ( .A(n11), .B(n12), .Z(y[7]) );
  NOR2X1 U12 ( .A(n13), .B(n14), .Z(n12) );
  NAND3X1 U13 ( .A(n15), .B(n16), .C(n17), .Z(n14) );
  NAND2X1 U14 ( .A(d7[7]), .B(n8), .Z(n17) );
  NAND2X1 U15 ( .A(d9[7]), .B(n1), .Z(n16) );
  NAND2X1 U16 ( .A(d8[7]), .B(n2), .Z(n15) );
  NAND3X1 U17 ( .A(n18), .B(n19), .C(n20), .Z(n13) );
  NAND2X1 U18 ( .A(d10[7]), .B(n3), .Z(n20) );
  NAND2X1 U19 ( .A(d0[7]), .B(n21), .Z(n19) );
  NAND2X1 U20 ( .A(d11[7]), .B(n4), .Z(n18) );
  NOR2X1 U21 ( .A(n22), .B(n23), .Z(n11) );
  NAND3X1 U22 ( .A(n24), .B(n25), .C(n26), .Z(n23) );
  NAND2X1 U23 ( .A(d1[7]), .B(n27), .Z(n26) );
  NAND2X1 U24 ( .A(d3[7]), .B(n28), .Z(n25) );
  NAND2X1 U25 ( .A(d2[7]), .B(n29), .Z(n24) );
  NAND3X1 U26 ( .A(n30), .B(n31), .C(n32), .Z(n22) );
  NAND2X1 U27 ( .A(d4[7]), .B(n6), .Z(n32) );
  NAND2X1 U28 ( .A(d6[7]), .B(n5), .Z(n31) );
  NAND2X1 U29 ( .A(d5[7]), .B(n7), .Z(n30) );
  NAND2X1 U30 ( .A(n33), .B(n34), .Z(y[6]) );
  NOR2X1 U31 ( .A(n35), .B(n36), .Z(n34) );
  NAND3X1 U32 ( .A(n37), .B(n38), .C(n39), .Z(n36) );
  NAND2X1 U33 ( .A(d7[6]), .B(n8), .Z(n39) );
  NAND2X1 U34 ( .A(d9[6]), .B(n1), .Z(n38) );
  NAND2X1 U35 ( .A(d8[6]), .B(n2), .Z(n37) );
  NAND3X1 U36 ( .A(n40), .B(n41), .C(n42), .Z(n35) );
  NAND2X1 U37 ( .A(d10[6]), .B(n3), .Z(n42) );
  NAND2X1 U38 ( .A(d0[6]), .B(n21), .Z(n41) );
  NAND2X1 U39 ( .A(d11[6]), .B(n4), .Z(n40) );
  NOR2X1 U40 ( .A(n43), .B(n44), .Z(n33) );
  NAND3X1 U41 ( .A(n45), .B(n46), .C(n47), .Z(n44) );
  NAND2X1 U42 ( .A(d1[6]), .B(n27), .Z(n47) );
  NAND2X1 U43 ( .A(d3[6]), .B(n28), .Z(n46) );
  NAND2X1 U44 ( .A(d2[6]), .B(n29), .Z(n45) );
  NAND3X1 U45 ( .A(n48), .B(n49), .C(n50), .Z(n43) );
  NAND2X1 U46 ( .A(d4[6]), .B(n6), .Z(n50) );
  NAND2X1 U47 ( .A(d6[6]), .B(n5), .Z(n49) );
  NAND2X1 U48 ( .A(d5[6]), .B(n7), .Z(n48) );
  NAND2X1 U49 ( .A(n51), .B(n52), .Z(y[5]) );
  NOR2X1 U50 ( .A(n53), .B(n54), .Z(n52) );
  NAND3X1 U51 ( .A(n55), .B(n56), .C(n57), .Z(n54) );
  NAND2X1 U52 ( .A(d7[5]), .B(n8), .Z(n57) );
  NAND2X1 U53 ( .A(d9[5]), .B(n1), .Z(n56) );
  NAND2X1 U54 ( .A(d8[5]), .B(n2), .Z(n55) );
  NAND3X1 U55 ( .A(n58), .B(n59), .C(n60), .Z(n53) );
  NAND2X1 U56 ( .A(d10[5]), .B(n3), .Z(n60) );
  NAND2X1 U57 ( .A(d0[5]), .B(n21), .Z(n59) );
  NAND2X1 U58 ( .A(d11[5]), .B(n4), .Z(n58) );
  NOR2X1 U59 ( .A(n61), .B(n62), .Z(n51) );
  NAND3X1 U60 ( .A(n63), .B(n64), .C(n65), .Z(n62) );
  NAND2X1 U61 ( .A(d1[5]), .B(n27), .Z(n65) );
  NAND2X1 U62 ( .A(d3[5]), .B(n28), .Z(n64) );
  NAND2X1 U63 ( .A(d2[5]), .B(n29), .Z(n63) );
  NAND3X1 U64 ( .A(n66), .B(n67), .C(n68), .Z(n61) );
  NAND2X1 U65 ( .A(d4[5]), .B(n6), .Z(n68) );
  NAND2X1 U66 ( .A(d6[5]), .B(n5), .Z(n67) );
  NAND2X1 U67 ( .A(d5[5]), .B(n7), .Z(n66) );
  NAND2X1 U68 ( .A(n69), .B(n70), .Z(y[4]) );
  NOR2X1 U69 ( .A(n71), .B(n72), .Z(n70) );
  NAND3X1 U70 ( .A(n73), .B(n74), .C(n75), .Z(n72) );
  NAND2X1 U71 ( .A(d7[4]), .B(n8), .Z(n75) );
  NAND2X1 U72 ( .A(d9[4]), .B(n1), .Z(n74) );
  NAND2X1 U73 ( .A(d8[4]), .B(n2), .Z(n73) );
  NAND3X1 U74 ( .A(n76), .B(n77), .C(n78), .Z(n71) );
  NAND2X1 U75 ( .A(d10[4]), .B(n3), .Z(n78) );
  NAND2X1 U76 ( .A(d0[4]), .B(n21), .Z(n77) );
  NAND2X1 U77 ( .A(d11[4]), .B(n4), .Z(n76) );
  NOR2X1 U78 ( .A(n79), .B(n80), .Z(n69) );
  NAND3X1 U79 ( .A(n81), .B(n82), .C(n83), .Z(n80) );
  NAND2X1 U80 ( .A(d1[4]), .B(n27), .Z(n83) );
  NAND2X1 U81 ( .A(d3[4]), .B(n28), .Z(n82) );
  NAND2X1 U82 ( .A(d2[4]), .B(n29), .Z(n81) );
  NAND3X1 U83 ( .A(n84), .B(n85), .C(n86), .Z(n79) );
  NAND2X1 U84 ( .A(d4[4]), .B(n6), .Z(n86) );
  NAND2X1 U85 ( .A(d6[4]), .B(n5), .Z(n85) );
  NAND2X1 U86 ( .A(d5[4]), .B(n7), .Z(n84) );
  NAND2X1 U87 ( .A(n87), .B(n88), .Z(y[3]) );
  NOR2X1 U88 ( .A(n89), .B(n90), .Z(n88) );
  NAND3X1 U89 ( .A(n91), .B(n92), .C(n93), .Z(n90) );
  NAND2X1 U90 ( .A(d7[3]), .B(n8), .Z(n93) );
  NAND2X1 U91 ( .A(d9[3]), .B(n1), .Z(n92) );
  NAND2X1 U92 ( .A(d8[3]), .B(n2), .Z(n91) );
  NAND3X1 U93 ( .A(n94), .B(n95), .C(n96), .Z(n89) );
  NAND2X1 U94 ( .A(d10[3]), .B(n3), .Z(n96) );
  NAND2X1 U95 ( .A(d0[3]), .B(n21), .Z(n95) );
  NAND2X1 U96 ( .A(d11[3]), .B(n4), .Z(n94) );
  NOR2X1 U97 ( .A(n97), .B(n98), .Z(n87) );
  NAND3X1 U98 ( .A(n99), .B(n100), .C(n101), .Z(n98) );
  NAND2X1 U99 ( .A(d1[3]), .B(n27), .Z(n101) );
  NAND2X1 U100 ( .A(d3[3]), .B(n28), .Z(n100) );
  NAND2X1 U101 ( .A(d2[3]), .B(n29), .Z(n99) );
  NAND3X1 U102 ( .A(n102), .B(n103), .C(n104), .Z(n97) );
  NAND2X1 U103 ( .A(d4[3]), .B(n6), .Z(n104) );
  NAND2X1 U104 ( .A(d6[3]), .B(n5), .Z(n103) );
  NAND2X1 U105 ( .A(d5[3]), .B(n7), .Z(n102) );
  NAND2X1 U106 ( .A(n105), .B(n106), .Z(y[2]) );
  NOR2X1 U107 ( .A(n107), .B(n108), .Z(n106) );
  NAND3X1 U108 ( .A(n109), .B(n110), .C(n111), .Z(n108) );
  NAND2X1 U109 ( .A(d7[2]), .B(n8), .Z(n111) );
  NAND2X1 U110 ( .A(d9[2]), .B(n1), .Z(n110) );
  NAND2X1 U111 ( .A(d8[2]), .B(n2), .Z(n109) );
  NAND3X1 U112 ( .A(n112), .B(n113), .C(n114), .Z(n107) );
  NAND2X1 U113 ( .A(d10[2]), .B(n3), .Z(n114) );
  NAND2X1 U114 ( .A(d0[2]), .B(n21), .Z(n113) );
  NAND2X1 U115 ( .A(d11[2]), .B(n4), .Z(n112) );
  NOR2X1 U116 ( .A(n115), .B(n116), .Z(n105) );
  NAND3X1 U117 ( .A(n117), .B(n118), .C(n119), .Z(n116) );
  NAND2X1 U118 ( .A(d1[2]), .B(n27), .Z(n119) );
  NAND2X1 U119 ( .A(d3[2]), .B(n28), .Z(n118) );
  NAND2X1 U120 ( .A(d2[2]), .B(n29), .Z(n117) );
  NAND3X1 U121 ( .A(n120), .B(n121), .C(n122), .Z(n115) );
  NAND2X1 U122 ( .A(d4[2]), .B(n6), .Z(n122) );
  NAND2X1 U123 ( .A(d6[2]), .B(n5), .Z(n121) );
  NAND2X1 U124 ( .A(d5[2]), .B(n7), .Z(n120) );
  NAND2X1 U125 ( .A(n123), .B(n124), .Z(y[1]) );
  NOR2X1 U126 ( .A(n125), .B(n126), .Z(n124) );
  NAND3X1 U127 ( .A(n127), .B(n128), .C(n129), .Z(n126) );
  NAND2X1 U128 ( .A(d7[1]), .B(n8), .Z(n129) );
  NAND2X1 U129 ( .A(d9[1]), .B(n1), .Z(n128) );
  NAND2X1 U130 ( .A(d8[1]), .B(n2), .Z(n127) );
  NAND3X1 U131 ( .A(n130), .B(n131), .C(n132), .Z(n125) );
  NAND2X1 U132 ( .A(d10[1]), .B(n3), .Z(n132) );
  NAND2X1 U133 ( .A(d0[1]), .B(n21), .Z(n131) );
  NAND2X1 U134 ( .A(d11[1]), .B(n4), .Z(n130) );
  NOR2X1 U135 ( .A(n133), .B(n134), .Z(n123) );
  NAND3X1 U136 ( .A(n135), .B(n136), .C(n137), .Z(n134) );
  NAND2X1 U137 ( .A(d1[1]), .B(n27), .Z(n137) );
  NAND2X1 U138 ( .A(d3[1]), .B(n28), .Z(n136) );
  NAND2X1 U139 ( .A(d2[1]), .B(n29), .Z(n135) );
  NAND3X1 U140 ( .A(n138), .B(n139), .C(n140), .Z(n133) );
  NAND2X1 U141 ( .A(d4[1]), .B(n6), .Z(n140) );
  NAND2X1 U142 ( .A(d6[1]), .B(n5), .Z(n139) );
  NAND2X1 U143 ( .A(d5[1]), .B(n7), .Z(n138) );
  NAND2X1 U144 ( .A(n141), .B(n142), .Z(y[0]) );
  NOR2X1 U145 ( .A(n143), .B(n144), .Z(n142) );
  NAND3X1 U146 ( .A(n145), .B(n146), .C(n147), .Z(n144) );
  NAND2X1 U147 ( .A(d7[0]), .B(n8), .Z(n147) );
  NAND3X1 U148 ( .A(s[1]), .B(s[2]), .C(n149), .Z(n148) );
  NAND2X1 U149 ( .A(d9[0]), .B(n1), .Z(n146) );
  NAND3X1 U150 ( .A(s[3]), .B(n151), .C(s[0]), .Z(n150) );
  NAND2X1 U151 ( .A(d8[0]), .B(n2), .Z(n145) );
  NAND3X1 U152 ( .A(n151), .B(n10), .C(s[3]), .Z(n152) );
  NAND3X1 U153 ( .A(n153), .B(n154), .C(n155), .Z(n143) );
  NAND2X1 U154 ( .A(d10[0]), .B(n3), .Z(n155) );
  NAND3X1 U155 ( .A(s[3]), .B(n10), .C(n157), .Z(n156) );
  NAND2X1 U156 ( .A(d0[0]), .B(n21), .Z(n154) );
  NAND2X1 U157 ( .A(n158), .B(n159), .Z(n21) );
  NAND2X1 U158 ( .A(n151), .B(n160), .Z(n159) );
  NAND2X1 U159 ( .A(s[3]), .B(s[2]), .Z(n158) );
  NAND2X1 U160 ( .A(d11[0]), .B(n4), .Z(n153) );
  NAND3X1 U161 ( .A(n157), .B(s[3]), .C(s[0]), .Z(n161) );
  NOR2X1 U162 ( .A(n162), .B(n163), .Z(n141) );
  NAND3X1 U163 ( .A(n164), .B(n165), .C(n166), .Z(n163) );
  NAND2X1 U164 ( .A(d1[0]), .B(n27), .Z(n166) );
  AND2X1 U165 ( .A(n149), .B(n151), .Z(n27) );
  NOR2X1 U166 ( .A(s[2]), .B(s[1]), .Z(n151) );
  NAND2X1 U167 ( .A(d3[0]), .B(n28), .Z(n165) );
  AND2X1 U168 ( .A(n149), .B(n157), .Z(n28) );
  NAND2X1 U169 ( .A(d2[0]), .B(n29), .Z(n164) );
  AND2X1 U170 ( .A(n157), .B(n160), .Z(n29) );
  NOR2X1 U171 ( .A(n9), .B(s[2]), .Z(n157) );
  NAND3X1 U172 ( .A(n167), .B(n168), .C(n169), .Z(n162) );
  NAND2X1 U173 ( .A(d4[0]), .B(n6), .Z(n169) );
  NAND3X1 U174 ( .A(n160), .B(n9), .C(s[2]), .Z(n170) );
  NAND2X1 U175 ( .A(d6[0]), .B(n5), .Z(n168) );
  NAND3X1 U176 ( .A(s[2]), .B(n160), .C(s[1]), .Z(n171) );
  NOR2X1 U177 ( .A(s[3]), .B(s[0]), .Z(n160) );
  NAND2X1 U178 ( .A(d5[0]), .B(n7), .Z(n167) );
  NAND3X1 U179 ( .A(s[2]), .B(n9), .C(n149), .Z(n172) );
  NOR2X1 U180 ( .A(n10), .B(s[3]), .Z(n149) );
  INVX2 U1 ( .A(n150), .Z(n1) );
  INVX2 U2 ( .A(n152), .Z(n2) );
  INVX2 U3 ( .A(n156), .Z(n3) );
  INVX2 U4 ( .A(n161), .Z(n4) );
  INVX2 U5 ( .A(n171), .Z(n5) );
  INVX2 U6 ( .A(n170), .Z(n6) );
  INVX2 U7 ( .A(n172), .Z(n7) );
  INVX2 U8 ( .A(n148), .Z(n8) );
  INVX2 U9 ( .A(s[1]), .Z(n9) );
  INVX2 U10 ( .A(s[0]), .Z(n10) );
endmodule


module zerodetect_WIDTH8 ( a, y );
  input [7:0] a;
  output y;
  wire   n1, n2, n3, n4, n5, n6;

  NOR2X1 U1 ( .A(n1), .B(n2), .Z(y) );
  NAND2X1 U2 ( .A(n3), .B(n4), .Z(n2) );
  NOR2X1 U3 ( .A(a[3]), .B(a[2]), .Z(n4) );
  NOR2X1 U4 ( .A(a[1]), .B(a[0]), .Z(n3) );
  NAND2X1 U5 ( .A(n5), .B(n6), .Z(n1) );
  NOR2X1 U6 ( .A(a[7]), .B(a[6]), .Z(n6) );
  NOR2X1 U7 ( .A(a[5]), .B(a[4]), .Z(n5) );
endmodule


module alu_WIDTH8 ( a, b, alucontrol, result, zero );
  input [7:0] a;
  input [7:0] b;
  input [4:0] alucontrol;
  output [7:0] result;
  output zero;
  wire   \diffresult[1] , \equalresult[0] , \greaterresult[0] ,
         \greater_oreqresult[0] , \diffresult[0] , n1, n2, n3, n4, n5;
  wire   [7:0] andresult;
  wire   [7:0] orresult;
  wire   [7:0] xorresult;
  wire   [7:0] b2;
  wire   [7:0] sumresult;
  wire   [7:0] multresult;
  wire   [7:0] shiftrightresult;
  wire   [7:0] shiftleftresult;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27;

  andN andblock ( .a(a), .b({n2, b[6:1], n4}), .y(andresult) );
  orN orblock ( .a(a), .b({n1, b[6:1], n4}), .y(orresult) );
  xorN xorblock ( .a(a), .b({n1, b[6:1], n4}), .y(xorresult) );
  condinv binv ( .a({n1, b[6:1], n3}), .invert(alucontrol[4]), .y(b2) );
  adder addblock ( .a(a), .b(b2), .cin(alucontrol[4]), .y(sumresult) );
  multiplier_trunc multblock ( .a(a), .b({b[7:1], n3}), .y(multresult) );
  shiftright shiftrightblock ( .a(a), .b({n1, b[6:1], n3}), .y(
        shiftrightresult) );
  shiftleft shiftleftblock ( .a(a), .b({n1, b[6:1], n3}), .y(shiftleftresult)
         );
  equal equalblock ( .a(a), .b({n2, b[6:1], n4}), .y({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, \equalresult[0] })
         );
  greater greaterblock ( .a(a), .b({n2, b[6:1], n3}), .y({
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, \greaterresult[0] }) );
  greater_oreq greater_oreqblock ( .a(a), .b({n2, b[6:1], n4}), .y({
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, \greater_oreqresult[0] }) );
  diff diffblock ( .a(a), .b({n1, b[6:1], n4}), .y({SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, \diffresult[0] })
         );
  mux12 resultmux ( .d0(andresult), .d1(orresult), .d2(xorresult), .d3(
        shiftrightresult), .d4(shiftleftresult), .d5(sumresult), .d6({
        \diffresult[1] , \diffresult[1] , \diffresult[1] , \diffresult[1] , 
        \diffresult[1] , \diffresult[1] , \diffresult[1] , sumresult[7]}), 
        .d7(multresult), .d8({\diffresult[1] , \diffresult[1] , 
        \diffresult[1] , \diffresult[1] , \diffresult[1] , \diffresult[1] , 
        \diffresult[1] , \equalresult[0] }), .d9({\diffresult[1] , 
        \diffresult[1] , \diffresult[1] , \diffresult[1] , \diffresult[1] , 
        \diffresult[1] , \diffresult[1] , \greaterresult[0] }), .d10({
        \diffresult[1] , \diffresult[1] , \diffresult[1] , \diffresult[1] , 
        \diffresult[1] , \diffresult[1] , \diffresult[1] , 
        \greater_oreqresult[0] }), .d11({\diffresult[1] , \diffresult[1] , 
        \diffresult[1] , \diffresult[1] , \diffresult[1] , \diffresult[1] , 
        \diffresult[1] , \diffresult[0] }), .s(alucontrol[3:0]), .y(result) );
  zerodetect_WIDTH8 zd ( .a(result), .y(zero) );
  INVX2 U2 ( .A(n5), .Z(n3) );
  INVX2 U3 ( .A(n5), .Z(n4) );
  INVX4 U4 ( .A(b[0]), .Z(n5) );
  TIE0 U5 ( .Z(\diffresult[1] ) );
  BUFX1 U6 ( .A(b[7]), .Z(n1) );
  BUFX1 U7 ( .A(b[7]), .Z(n2) );
endmodule


module datapath_WIDTH8_REGBITS3 ( clk, reset, memdata, alusrca, memtoreg, iord, 
        pcen, regwrite, regdst, pcsrc, alusrcb, irwrite, alucontrol, zero, 
        instr, adr, writedata );
  input [7:0] memdata;
  input [1:0] pcsrc;
  input [1:0] alusrcb;
  input [3:0] irwrite;
  input [4:0] alucontrol;
  output [31:0] instr;
  output [7:0] adr;
  output [7:0] writedata;
  input clk, reset, alusrca, memtoreg, iord, pcen, regwrite, regdst;
  output zero;
  wire   \*Logic1* , \*Logic0* ;
  wire   [2:0] wa;
  wire   [7:0] nextpc;
  wire   [7:0] pc;
  wire   [7:0] data;
  wire   [7:0] rd1;
  wire   [7:0] a;
  wire   [7:0] rd2;
  wire   [7:0] aluresult;
  wire   [7:0] aluout;
  wire   [7:0] srca;
  wire   [7:0] srcb;
  wire   [7:0] wd;

  mux2_WIDTH3 regmux ( .d0(instr[18:16]), .d1(instr[13:11]), .s(regdst), .y(wa) );
  flopen_WIDTH8_0 ir0 ( .clk(clk), .en(irwrite[0]), .d(memdata), .q(instr[7:0]) );
  flopen_WIDTH8_3 ir1 ( .clk(clk), .en(irwrite[1]), .d(memdata), .q(
        instr[15:8]) );
  flopen_WIDTH8_2 ir2 ( .clk(clk), .en(irwrite[2]), .d(memdata), .q(
        instr[23:16]) );
  flopen_WIDTH8_1 ir3 ( .clk(clk), .en(irwrite[3]), .d(memdata), .q(
        instr[31:24]) );
  flopenr_WIDTH8 pcreg ( .clk(clk), .reset(reset), .en(pcen), .d(nextpc), .q(
        pc) );
  flop_WIDTH8_0 datareg ( .clk(clk), .d(memdata), .q(data) );
  flop_WIDTH8_3 areg ( .clk(clk), .d(rd1), .q(a) );
  flop_WIDTH8_2 wrdreg ( .clk(clk), .d(rd2), .q(writedata) );
  flop_WIDTH8_1 resreg ( .clk(clk), .d(aluresult), .q(aluout) );
  mux2_WIDTH8_0 adrmux ( .d0(pc), .d1(aluout), .s(iord), .y(adr) );
  mux2_WIDTH8_3 src1mux ( .d0(pc), .d1(a), .s(alusrca), .y(srca) );
  mux4_WIDTH8 src2mux ( .d0(writedata), .d1({\*Logic0* , \*Logic0* , 
        \*Logic0* , \*Logic0* , \*Logic0* , \*Logic0* , \*Logic0* , \*Logic1* }), .d2(instr[7:0]), .d3({instr[5:0], \*Logic0* , \*Logic0* }), .s(alusrcb), 
        .y(srcb) );
  mux3_WIDTH8 pcmux ( .d0(aluresult), .d1(aluout), .d2({instr[5:0], \*Logic0* , 
        \*Logic0* }), .s(pcsrc), .y(nextpc) );
  mux2_WIDTH8_2 wdmux ( .d0(aluout), .d1(data), .s(memtoreg), .y(wd) );
  regfile_WIDTH8_REGBITS3 rf ( .clk(clk), .regwrite(regwrite), .ra1(
        instr[23:21]), .ra2(instr[18:16]), .wa(wa), .wd(wd), .rd1(rd1), .rd2(
        rd2) );
  alu_WIDTH8 alunit ( .a(srca), .b(srcb), .alucontrol(alucontrol), .result(
        aluresult), .zero(zero) );
  TIE1 U3 ( .Z(\*Logic1* ) );
  TIE0 U4 ( .Z(\*Logic0* ) );
endmodule


module mips ( clk, reset, memdata, memread, memwrite, adr, writedata );
  input [7:0] memdata;
  output [7:0] adr;
  output [7:0] writedata;
  input clk, reset;
  output memread, memwrite;
  wire   zero, alusrca, memtoreg, iord, pcen, regwrite, regdst, n1;
  wire   [5:0] op;
  wire   [5:0] funct;
  wire   [1:0] pcsrc;
  wire   [1:0] alusrcb;
  wire   [4:0] alucontrol;
  wire   [3:0] irwrite;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20;

  controller cont ( .clk(clk), .reset(reset), .op(op), .funct(funct), .zero(
        zero), .memread(memread), .memwrite(memwrite), .alusrca(alusrca), 
        .memtoreg(memtoreg), .iord(iord), .pcen(pcen), .regwrite(regwrite), 
        .regdst(regdst), .pcsrc(pcsrc), .alusrcb(alusrcb), .alucontrol({
        SYNOPSYS_UNCONNECTED__0, alucontrol[3:0]}), .irwrite(irwrite) );
  datapath_WIDTH8_REGBITS3 dp ( .clk(clk), .reset(reset), .memdata(memdata), 
        .alusrca(alusrca), .memtoreg(memtoreg), .iord(iord), .pcen(pcen), 
        .regwrite(regwrite), .regdst(regdst), .pcsrc(pcsrc), .alusrcb(alusrcb), 
        .irwrite(irwrite), .alucontrol({n1, alucontrol[3:0]}), .zero(zero), 
        .instr({op, SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, funct}), .adr(adr), 
        .writedata(writedata) );
  TIE0 U1 ( .Z(n1) );
endmodule

