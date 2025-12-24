// IEEE Std 1800-2012
//   19. Functional coverage
//    19.8 Predefined coverage methods

// ! TYPE: POSITIVE

module top;

  int a, b, c, d, covered, total;
  covergroup cg (int xb, yb, ref int x, y) ;
    coverpoint x {bins xbins[] = {[0:xb]};}
    coverpoint y {bins ybins[] = {[0:yb]};}
  endgroup

  cg cv1 = new (1, 2, a, b); // 'cv1.x' has 2 bins, 'cv1.y' has 3 bins
  cg cv2 = new (3, 6, c, d); // 'cv2.x' has 4 bins, 'cv2.y' has 7 bins

  initial begin
    cv1.x.get_inst_coverage(covered, total); // 'total = 2'
    cv1.get_inst_coverage(covered, total); // 'total = 5'
    cg::x::get_coverage(covered, total); // 'total = 6'
    cg::get_coverage(covered, total); // 'total = 16'
  end

endmodule
