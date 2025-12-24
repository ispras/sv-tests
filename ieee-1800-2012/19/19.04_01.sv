// IEEE Std 1800-2012
//   19. Functional coverage
//    19.4 Using covergroup in classes

// ! TYPE: POSITIVE

module top;

  class xyz;
    bit [3:0] m_x;
    int m_y;
    bit m_z;

    covergroup cov1 @m_z; // embedded 'covergroup'
      coverpoint m_x;
      coverpoint m_y;
    endgroup

    function new(); cov1 = new; endfunction
  endclass

endmodule
