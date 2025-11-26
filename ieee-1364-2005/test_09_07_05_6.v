// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.7 Procedural timing controls
//       9.7.4 Event or operator
//         Nets and variables that appear on the right-hand side of assignments, in function and
//         task calls, in case and conditional expressions, as an index variable on the left-hand
//         side of assignments, or as variables in case item expressions shall all be included by
//         these rules.

// ! TYPE: POSITIVE

module test(go, ws, state);

  parameter IDLE = 0, READ = 1, DLY = 2, DONE = 3;
  input go, ws;
  input [3 : 0] state;
  reg [3 : 0] next;

  always @* begin // same as @(state or go or ws)
    next = 4'b0;
    case (1'b1)
      state[IDLE]: if (go) next[READ] = 1'b1;
        else next[IDLE] = 1'b1;
      state[READ]: next[DLY] = 1'b1;
      state[DLY]: if (!ws) next[DONE] = 1'b1;
    endcase
  end
endmodule
