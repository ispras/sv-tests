// IEEE Std 1800-2012
//   33. Configuring the contents of a design
//    33.4 Configurations
//     33.4.3 Setting parameters in configurations

// ! TYPE: POSITIVE

module adder #(parameter ID = "id", W = 8, D = 512) ();
  initial $display("ID = %s, W = %d, D = %d", ID, W, D);
endmodule: adder

module top();
  parameter WIDTH = 64, DEPTH = 1024, ID = "A1";
  adder #(.ID(ID), .W(WIDTH), .D(DEPTH)) a1();
endmodule

config cfg3;
  design rtlLib.top;
  instance top.a1 use #(.W()); // set only parameter 'W' back to its default
endconfig
