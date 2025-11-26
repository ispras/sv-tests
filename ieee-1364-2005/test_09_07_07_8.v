// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.7 Procedural timing controls
//       9.7.7 Intra-assignment timing controls
//          The following is an example of a repeat event control as the intra-assignment delay of
//          a nonblocking assignment. In this example, the value of data is evaluated when the
//          assignment is encountered. After five occurrences of posedge clk, a is assigned
//          the value of data.

// ! TYPE: POSITIVE

module test (clk);

  input clk;
  reg a, data;

  initial begin
    a <= repeat(5) @( posedge clk) data;
  end
endmodule
