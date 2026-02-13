// IEEE Std 1800-2012
//   35. Direct programming interface
//    35.5 Imported tasks and functions
//     35.5.6 Types of formal arguments
//      35.5.6.1 Open arrays

// ! TYPE: POSITIVE

module top();
  import "DPI-C" function void f1(input logic [127:0]);
  import "DPI-C" function void f2(logic [127:0] i []); // open array of 128-bit

  typedef struct {int i;} MyType;

  // 2-dimensional unsized unpacked array of 'MyType'
  import "DPI-C" function void f3(input MyType i [][]);

  MyType a_10x5 [11:20][6:2];
  MyType a_64x8 [64:1][-1:-8];

  initial begin
    f3(a_10x5);
    f3(a_64x8);
  end
endmodule
