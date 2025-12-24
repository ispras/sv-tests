// IEEE Std 1800-2012
//   19. Functional coverage
//    19.4 Using covergroup in classes

// ! TYPE: POSITIVE

module top;

  class Helper;
  int m_ev;
  endclass

  class MyClass;
    Helper m_obj;
    int m_a;

    covergroup Cov @(m_obj.m_ev);
      coverpoint m_a;
    endgroup

    function new();
      m_obj = new;
      Cov = new; // Create embedded covergroup after creating 'm_obj'
    endfunction
  endclass

endmodule
