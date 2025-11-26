// IEEE Std 1800-2012
//   16. Assertions
//    16.17 Expect statement

// ! TYPE: POSITIVE

module top(input clk, a, b, c);

program tst;
  initial begin
    # 200ms;
    expect( @(posedge clk) a ##1 b ##1 c ) else $error( "expect failed" );
  end
endprogram

integer data;

task automatic wait_for( integer value, output bit success );
expect( @(posedge clk) ##[1:10] data == value ) success = 1;
  else success = 0;
endtask

initial begin
  bit ok;
  wait_for( 23, ok ); // wait for the value 23
  // ...
end

endmodule
