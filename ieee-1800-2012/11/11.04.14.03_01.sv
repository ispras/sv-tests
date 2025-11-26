// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.4 Operator descriptions
//     11.4.14 Streaming operators (pack/unpack)
//      11.4.14.3 Streaming concatenation as an assignment target (unpack)

// ! TYPE: VARYING

module top;

  int a, b, c;
  logic [10:0] up [3:0];
  logic [11:1] p1, p2, p3, p4;
  bit [96:1] y = {>>{ a, b, c }}; // OK: pack 'a', 'b', 'c'
`ifdef NEGATIVE_TEST
  int j = {>>{ a, b, c }}; // error: 'j' is 32 bits < 96 bits
`endif
  bit [99:0] d = {>>{ a, b, c }}; // OK: 'd' is padded with 4 bits

  initial begin
`ifdef NEGATIVE_TEST
    {>>{ a, b, c }} = 23'b1; // error: too few bits in stream
`endif
    {>>{ a, b, c }} = 96'b1; // OK: unpack a = 0, b = 0, c = 1
    {>>{ a, b, c }} = 100'b1; // OK: unpack as above (4 bits unread)
    {>> {p1, p2, p3, p4}} = up; // OK: unpack p1 = up[3], p2 = up[2],
                                // p3 = up[1], p4 = up[0]
  end
endmodule
