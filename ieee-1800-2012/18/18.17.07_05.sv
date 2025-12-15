// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.17 Random sequence generation—randsequence
//     18.17.7 Value passing between productions

// ! TYPE: POSITIVE

module top(input clk);

  int gap_length;
  default clocking cb @(posedge clk);
  endclocking

  class DSL;
    rand bit [7:0] data;
    rand bit [7:0] crc;
  endclass // class that creates valid 'DSL' packets

  function void transmit(DSL packet);
  endfunction

  initial randsequence (STREAM)
    STREAM : GAP DATA := 80 | DATA := 20 ;
    DATA : PACKET(0) := 94 {transmit(PACKET);}
           | PACKET(1) := 6 {transmit(PACKET);};
    DSL PACKET (bit bad) : {DSL d = new; if (bad) d.crc ^= 23; return d;};
    GAP: {gap_length = $urandom_range(1, 20); ## gap_length;};
  endsequence

endmodule
