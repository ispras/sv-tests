// IEEE Std 1800-2012
//   17. Checkers
//    17.7 Checker variables

// ! TYPE: POSITIVE

module top(input clock);

  // If 'start_ev' is asserted then the value of 'in_data' has to be
  // equal to the value of 'out_data' at the next assertion of 'end_ev'
  //
  // It is assumed that 'in_data' and 'out_data' have the same size
  checker data_legal_with_loc(start_ev, end_ev, in_data, out_data);
    sequence transaction (loc_var);
      (start_ev, loc_var = in_data) ##1 end_ev[-> 1];
    endsequence

    property data_legal;
      bit [$bits(in_data) - 1:0] mem_data;
      transaction(mem_data) |-> out_data == mem_data;
    endproperty

    a1: assert property (@clock data_legal);
  endchecker : data_legal_with_loc

endmodule
