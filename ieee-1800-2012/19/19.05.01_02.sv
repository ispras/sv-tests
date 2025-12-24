// IEEE Std 1800-2012
//   19. Functional coverage
//    19.5 Defining coverage points
//     19.5.1 Specifying bins for values

// ! TYPE: POSITIVE

module top(input clk);

  covergroup cg (ref int ra, input int low, int high) @(posedge clk);
    coverpoint ra // sample variable passed by reference
    {
      bins good = {[low:high]};
      bins bad[] = default;
    }
  endgroup

  int va, vb;
  cg c1 = new(va, 0, 50); // cover variable 'va' in the range 0 to 50
  cg c2 = new(vb, 120, 600); // cover variable 'vb' in the range 120 to 600

endmodule
