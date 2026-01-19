// IEEE Std 1800-2012
//   27. Generate constructs
//    27.4 Loop generate constructs

// ! TYPE: POSITIVE

module top(co, sum, a, b, ci);
  parameter SIZE = 4;
  output [SIZE - 1:0] sum;
  output co;
  input [SIZE - 1:0] a, b;
  input ci;
  wire [SIZE:0] c;
  genvar i;

  assign c[0] = ci;
  // Hierarchical gate instance names are:
  // xor gates: 'bitnum[0].g1' 'bitnum[1].g1' 'bitnum[2].g1' 'bitnum[3].g1'
  //            'bitnum[0].g2' 'bitnum[1].g2' 'bitnum[2].g2' 'bitnum[3].g2'
  // and gates: 'bitnum[0].g3' 'bitnum[1].g3' 'bitnum[2].g3' 'bitnum[3].g3'
  //            'bitnum[0].g4' 'bitnum[1].g4' 'bitnum[2].g4' 'bitnum[3].g4'
  // or gates: 'bitnum[0].g5' 'bitnum[1].g5' 'bitnum[2].g5' 'bitnum[3].g5'
  // Gate instances are connected with nets named:
  // 'bitnum[0].t1' 'bitnum[1].t1' 'bitnum[2].t1' 'bitnum[3].t1'
  // 'bitnum[0].t2' 'bitnum[1].t2' 'bitnum[2].t2' 'bitnum[3].t2'
  // 'bitnum[0].t3' 'bitnum[1].t3' 'bitnum[2].t3' 'bitnum[3].t3'

  for (i = 0; i < SIZE; i = i + 1) begin: bitnum
    wire t1, t2, t3;
    xor g1 (t1, a[i], b[i]);
    xor g2 (sum[i], t1, c[i]);
    and g3 (t2, a[i], b[i]);
    and g4 (t3, t1, c[i]);
    or g5 (c[i + 1], t2, t3);
  end

  assign co = c[SIZE];
endmodule
