// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.4 Packed and unpacked arrays
//    7.4.6 Indexing and slicing of arrays

// ! TYPE: POSITIVE

module top;

  logic [63:0] data, bitvec;
  logic [7:0] byte2;

  bit [3:0] [7:0] j; // 'j' is a packed array
  byte k;

  bit signed [31:0] busA [7:0] ; // unpacked array of 8 32-bit vectors
  int busB [1:0]; // unpacked array of 2 integers

  parameter int x = 0, y = 3, z = 1;
  int a[x:y], b[y:z], e;
  int i = bitvec[j +: 1];

  initial begin
    byte2 = data[23:16]; // an 8-bit part-select from 'data'

    k = j[2]; // select a single 8-bit element from 'j'

    busB = busA[7:6]; // select a 2-vector slice from 'busA'

    a = {b[3 -: 3], e};
  end

endmodule
