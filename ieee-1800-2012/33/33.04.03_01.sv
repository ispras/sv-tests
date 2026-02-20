// IEEE Std 1800-2012
//   33. Configuring the contents of a design
//    33.4 Configurations
//     33.4.3 Setting parameters in configurations

// ! TYPE: POSITIVE

module adder #(parameter ID = "id", W = 8, D = 512) ();
  initial $display("ID = %s, W = %d, D = %d", ID, W, D);
endmodule: adder

module top();
  parameter WIDTH = 16;
  adder a1();
endmodule
