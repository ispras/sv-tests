// IEEE Std 1800-2012
//   19. Functional coverage
//    19.4 Using covergroup in classes

// ! TYPE: POSITIVE

module top(input clk);

  class MC;
    logic [3:0] m_x;
    local logic m_z;
    bit m_e;
    covergroup cv1 @(posedge clk); coverpoint m_x; endgroup
    covergroup cv2 @m_e; coverpoint m_z; endgroup
  endclass

endmodule
