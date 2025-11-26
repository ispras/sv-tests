// IEEE Std 1800-2012
//   12. Procedural programming statements
//    12.5 Case statement
//     12.5.1 Case statement with do-not-cares

// ! TYPE: POSITIVE

module top;

  task stat1;
  endtask

  task stat2;
  endtask

  task stat3;
  endtask

  task stat4;
  endtask

  logic [7:0] r, mask;

  initial begin
    mask = 8'bx0x0x0x0;

    casex (r ^ mask)
      8'b001100xx: stat1;
      8'b1100xx00: stat2;
      8'b00xx0011: stat3;
      8'bxx010100: stat4;
    endcase
  end

endmodule
