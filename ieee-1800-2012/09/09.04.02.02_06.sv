// IEEE Std 1800-2012
//   9. Processes
//    9.4 Procedural timing controls
//     9.4.2 Event control
//      9.4.2.2 Implicit event_expression list

// ! TYPE: POSITIVE

module top;

  parameter IDLE = 0, READ = 1, DLY = 2, DONE = 3;
  reg [3:0] state, next;
  reg go, ws;

  always @* begin // same as '@(state or go or ws)'
    next = 4'b0;

    case (1'b1)
      state[IDLE]:
        if (go) next[READ] = 1'b1;
        else next[IDLE] = 1'b1;

      state[READ]:
        next[DLY ] = 1'b1;

      state[DLY ]:
        if (!ws) next[DONE] = 1'b1;
        else next[READ] = 1'b1;

      state[DONE]:
        next[IDLE] = 1'b1;
    endcase
  end

endmodule
