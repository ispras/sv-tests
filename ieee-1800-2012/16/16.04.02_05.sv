// IEEE Std 1800-2012
//   16. Assertions
//    16.3 Deferred assertions
//     16.4.2 Deferred assertion flush points

// ! TYPE: POSITIVE

module top;

reg my_cond;
int opcode;

function int error_type (int opcode);
  func_assert: assert (opcode < 64) else $display("Opcode error.");
  if (opcode < 32)
    return (0);
  else
    return (1);
endfunction

always_comb begin : b1
  a1: assert #0 (my_cond) else
  $error("Error on operation of type %d\n", error_type(opcode));
  a2: assert #0 (my_cond) else
  error_type(opcode);
end

endmodule
