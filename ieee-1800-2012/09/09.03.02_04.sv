// IEEE Std 1800-2012
//   9. Processes
//    9.3 Block statements
//     9.3.2 Parallel blocks

// ! TYPE: POSITIVE

module top;

  initial
    for( int j = 1; j <= 3; ++j )
      fork
        automatic int k = j; // local copy, 'k', for each value of 'j'
        #k $write( "%0d", k );
        begin
          automatic int m = j; // the value of 'm' is undetermined
        end
      join_none

endmodule
