// IEEE Std 1800-2012
//   13. Tasks and functions (subroutines)
//    13.4 Functions
//     13.4.4 Background processes spawned by function calls

// ! TYPE: VARYING

module top;

  class IntClass;
    int a;
  endclass

  IntClass address=new(), stack=new();

  function automatic bit watch_for_zero(IntClass p);
    fork
      forever @p.a begin
        if (p.a == 0) $display ("Unexpected zero");
      end
    join_none
    return (p.a == 0);
  endfunction

  function bit start_check();
    return (watch_for_zero(address) | watch_for_zero(stack));
  endfunction

`ifdef NEGATIVE_TEST
  bit y = watch_for_zero(stack); // illegal
`endif

  initial if (start_check()) $display ("OK"); // legal

  initial fork
    if (start_check()) $display("OK too"); // legal
  join_none

endmodule
