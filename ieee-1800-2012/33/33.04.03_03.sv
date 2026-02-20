// IEEE Std 1800-2012
//   33. Configuring the contents of a design
//    33.4 Configurations
//     33.4.3 Setting parameters in configurations

// ! TYPE: POSITIVE

module adder #(parameter ID = "id", W = 8, D = 512) ();
  initial $display("ID = %s, W = %d, D = %d", ID, W, D);
endmodule: adder

module top();
  parameter S = 16;
  adder #(.ID("a1")) a1();
  adder #(.ID("a2")) a2();
  adder #(.ID("a3")) a3();
  adder #(.ID("a4")) a4();
endmodule

config cfg2;
  localparam S = 24;
  design rtlLib.top;
  instance top.a1 use #(.W(top.S));
  instance top.a2 use #(.W(S));
endconfig
