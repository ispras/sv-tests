// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.4 Nested modules

// ! TYPE: POSITIVE

// This example shows a D-type flip-flop made of NAND gates
module top(input d, ck, pr, clr, output q, nq);
  wire q1, nq1, q2, nq2;
  nand g1b (nq1, d, clr, q1);
  nand g1a (q1, ck, nq2, nq1);
  nand g2b (nq2, ck, clr, q2);
  nand g2a (q2, nq1, pr, nq2);
  nand g3a (q, nq2, clr, nq);
  nand g3b (nq, q1, pr, q);
endmodule
