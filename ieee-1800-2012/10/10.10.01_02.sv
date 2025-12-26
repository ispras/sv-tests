// IEEE Std 1800-2012
//   10. Assignment statements
//    10.10 Unpacked array concatenation
//     10.10.1 Unpacked array concatenations compared with
//             array assignment patterns

// ! TYPE: VARYING

module top;

  typedef int AI3[1:3];
  AI3 A3;
  int A9[1:9];

  initial begin
    A3 = '{1, 2, 3};
`ifdef NEGATIVE_TEST
    A9 = '{3{A3}}; // illegal, 'A3' is wrong element type
    A9 = '{A3, 4, 5, 6, 7, 8, 9}; // illegal, 'A3' is wrong element type
`endif
    A9 = {A3, 4, 5, A3, 6}; // legal, gives A9='{1,2,3,4,5,1,2,3,6}
    A9 = '{9{1}}; // legal, gives A9='{1,1,1,1,1,1,1,1,1}
`ifdef NEGATIVE_TEST
    A9 = {9{1}}; // illegal, no replication in unpacked array concatenation
    A9 = {A3, {4, 5, 6, 7, 8, 9} }; // illegal, {...} is not
                                    // self-determined here
    A9 = {A3, '{4, 5, 6, 7, 8, 9} }; // illegal, '{...} is not self-determined
`endif
    A9 = {A3, 4, AI3'{5, 6, 7}, 8, 9}; // legal, A9='{1,2,3,4,5,6,7,8,9}
  end

endmodule
