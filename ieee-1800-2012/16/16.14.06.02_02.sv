// IEEE Std 1800-2012
//   16. Assertions
//    16.14 Concurrent assertions
//     16.14.6 Embedding concurrent assertions in procedural code
//      16.14.6.2 Procedural assertion flush points

// ! TYPE: POSITIVE

module top(clk, a, b);

input clk;
input a;
input b;

class Reporter;
  function new();
  endfunction
  function success(int id);
  endfunction
  function error(int id, logic a_v, logic b_v);
  endfunction
endclass

Reporter r = new();

default clocking @(posedge clk); endclocking

always @(a or b) begin : b1
  a2: assert property (a == b) r.success(0); else r.error(0, a, b);
  #1;
  a3: assert property (a == b) r.success(1); else r.error(1, a, b);
end

endmodule
