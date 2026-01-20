// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.8 Upwards name referencing
//     23.8.1 Task and function name resolution

// ! TYPE: POSITIVE

package p;
  function void f();
    $display("p::f");
  endfunction
endpackage

module top;
  import p::*;
  if (1) begin: b // generate block
    initial f(); // reference to 'f'
    function void f();
      $display("top.b.f");
    endfunction
  end
endmodule
