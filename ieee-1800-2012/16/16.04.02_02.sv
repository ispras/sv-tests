// IEEE Std 1800-2012
//   16. Assertions
//    16.3 Deferred assertions
//     16.4.2 Deferred assertion flush points

// ! TYPE: POSITIVE

module top(input a, b);

  class RptObj;
    function new();
    endfunction

    function success(int id);
    endfunction

    function error(int id, logic a_v, logic b_v);
    endfunction
  endclass

  RptObj rptobj = new();

  always @(a or b) begin : b1
    a3: assert #0 (a == b) rptobj.success(0); else rptobj.error(0, a, b);
    #1;
    a4: assert #0 (a == b) rptobj.success(1); else rptobj.error(1, a, b);
  end

endmodule
