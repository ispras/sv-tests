// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.7 Procedural timing controls
//       9.7.7 Intra-assignment timing controls
//          The following is an example of a repeat event control as the intra-assignment delay
//          of a  procedural assignment. In this example, the value of data is evaluated when
//          the assignment is encountered. After the number of transitions of clk equals the value
//          of num, a is assigned the value of data.

// ! TYPE: POSITIVE

module test (clk);

  input clk;
  reg a, data, num;

  initial begin
    a =  repeat(num) @(clk) data;
  end
endmodule
