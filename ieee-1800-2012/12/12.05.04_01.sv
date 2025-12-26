// IEEE Std 1800-2012
//   12. Procedural programming statements
//    12.5 Case statement
//     12.5.4 Set membership case statement

// ! TYPE: POSITIVE

module top(input clock);

  task task1;
  endtask

  task task2;
  endtask

  logic [2:0] status;

  always @(posedge clock)
    priority case (status) inside
      1, 3 : task1; // matches 'b001 and 'b011
      3'b0?0, [4:7]: task2; // matches 'b000 'b010 'b0x0 'b0z0
                            // 'b100 'b101 'b110 'b111
    endcase // 'priority case' fails all other values including
            // 'b00x 'b01x 'bxxx

endmodule
