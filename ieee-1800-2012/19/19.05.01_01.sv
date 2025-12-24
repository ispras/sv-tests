// IEEE Std 1800-2012
//   19. Functional coverage
//    19.5 Defining coverage points
//     19.5.1 Specifying bins for values

// ! TYPE: POSITIVE

module top(input clk);

  bit [9:0] v_a;
  covergroup cg @(posedge clk);
    coverpoint v_a
    {
      bins a = {[0:63], 65};
      bins b[] = {[127:150], [148:191]};
      bins c[] = {200, 201, 202};
      bins d = {[1000:$]};
      bins others[] = default;
    }
  endgroup

endmodule
