// IEEE Std 1364-2005
//   12. Hierarchical structures
//     12.3 Ports
//       12.3.6 Connecting module instance ports by name
//         This example defines the modules modB and topmod , and then topmod instantiates modB
//         using ports connected by name.

// ! TYPE: POSITIVE

module modB(wa, wb, c, d);

  inout wa, wb;
  input c, d;
  tranif1     g1(wa, wb, cinvert);
  not #(6, 2) n1(cinvert, intvar);
  and #(5, 6) g2(intvar, c, d);
endmodule

module topmod;

  wire [4:0] v;
  wire a, b, c, w;

  modB b1(.wb(v[3]), .wa(v[0]), .d(v[4]), .c(w));
endmodule
