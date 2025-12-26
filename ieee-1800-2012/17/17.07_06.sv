// IEEE Std 1800-2012
//   17. Checkers
//    17.7 Checker variables

// ! TYPE: POSITIVE

module top(input clock);

  // If 'start_ev' is asserted then the value of 'out_data'
  // at the next assertion of 'end_ev' has to be equal to
  // the current value of 'in_data' at 'start_ev'.
  //
  // It is assumed that 'in_data' and 'out_data' have the same size
  checker data_legal(start_ev, end_ev, in_data, out_data);
    rand const bit [$bits(in_data) - 1:0] mem_data;

    sequence transaction;
      start_ev && (in_data == mem_data) ##1 end_ev[-> 1];
    endsequence

    a1: assert property (@clock transaction |-> out_data == mem_data);
  endchecker : data_legal

endmodule
