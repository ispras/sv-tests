// IEEE Std 1800-2012
//   33. Configuring the contents of a design
//    33.4 Configurations
//     33.4.3 Setting parameters in configurations

// ! TYPE: POSITIVE

module adder #(parameter ID = "id", W = 8, D = 512) ();
  initial $display("ID = %s, W = %d, D = %d", ID, W, D);
endmodule: adder

module top;
  top8 t();
  defparam t.WIDTH = 64;
  defparam t.a1.W = 16;
endmodule

module top8();
  parameter WIDTH = 32;
  adder #(.ID("a1")) a1();
  adder #(.ID("a2"), .W(WIDTH)) a2();
endmodule

config cfg6;
  design rtlLib.top;
  instance top.t use #(.WIDTH(48));
endconfig
