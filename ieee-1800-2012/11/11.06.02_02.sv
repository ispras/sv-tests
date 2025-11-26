// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.6 Expression bit lengths
//     11.6.2 Example of expression bit-length problem

// ! TYPE: POSITIVE

module top;

  logic [3:0] a, b, c;
  logic [4:0] d;

  initial begin
    a = 9;
    b = 8;
    c = 1;
    $display("answer = %b", c ? (a & b) : d);
  end

endmodule
