// IEEE Std 1800-2012
//   29. User-defined primitives
//    29.8 UDP instances

// ! TYPE: POSITIVE

primitive d_edge_ff(q, clock, data);
  output q; reg q;
  input clock, data;

  table
    // 'clock' 'data' 'q' 'q+'
    // obtain output on rising edge of 'clock'
    (01) 0 : ? : 0 ;
    (01) 1 : ? : 1 ;
    (0?) 1 : 1 : 1 ;
    (0?) 0 : 0 : 0 ;
    // ignore negative edge of 'clock'
    (?0) ? : ? : - ;
    // ignore 'data' changes on steady 'clock'
    ? (??) : ? : - ;
  endtable
endprimitive

module top;
  reg clock, data;
  parameter p1 = 10;
  parameter p2 = 33;
  parameter p3 = 12;

  d_edge_ff #p3 d_inst (q, clock, data);
  initial begin
    data = 1;
    clock = 1;
    #(20 * p1) $finish;
  end
  always #p1 clock = ~clock;
  always #p2 data = ~data;
endmodule
