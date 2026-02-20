// IEEE Std 1800-2012
//   33. Configuring the contents of a design
//    33.4 Configurations
//     33.4.3 Setting parameters in configurations

// ! TYPE: POSITIVE

module adder #(parameter ID = "id", W = 8, D = 512) ();
  initial $display("ID = %s, W = %d, D = %d", ID, W, D);
endmodule: adder

module top();
  adder a1();
endmodule

config cfg4;
  design rtlLib.top;
  instance top.a1 use #(); // set all parameters in instance 'a1'
                           // back to their defaults
endconfig
