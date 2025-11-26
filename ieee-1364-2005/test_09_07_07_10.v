// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.7 Procedural timing controls
//       9.7.7 Intra-assignment timing controls
//          The following is an example of a repeat event control with expressions containing
//          operations to specify both the number of event occurrences and the event that
//          is counted. In this example, the value of data is evaluated when the assignment is
//          encountered. After the sum of the positive edges of phi1 and the negative edges of phi2
//          equals the sum of a and b, a is assigned the value of data. Even if posedge phi1 and
//          negedge phi2 occurred at the same simulation time, each will be detected separately.

// ! TYPE: POSITIVE

module test(phi1, phi2, data);

  input phi1, phi2, data;
  reg a, b, num;

  initial begin
    a <= repeat(a + b) @(posedge phi1 or negedge phi2) data;
  end
endmodule
