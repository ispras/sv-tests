// IEEE Std 1800-2012
//   6. Data types
//    6.6 Net types
//     6.6.7 User-defined nettypes

// ! TYPE: POSITIVE

module top;
  class Base #(parameter p = 1);
    typedef struct {
      real r;
      bit[p - 1:0] data;
    } T;

    static function T Tsum (input T driver[]);
      Tsum.r = 0.0;
      Tsum.data = 0;
      foreach (driver[i])
        Tsum.data += driver[i].data;
      Tsum.r = $itor(Tsum.data);
    endfunction
  endclass

  typedef Base#(32)::T MyBaseT_T;
  nettype MyBaseT_T narrowTsum with Base#(32)::Tsum;

  typedef Base#(64)::T MyBaseType_T;
  nettype MyBaseType_T wideTsum with Base#(64)::Tsum;

  narrowTsum net1; // 'data' is 32 bits wide
  wideTsum net2; // 'data' is 64 bits wide
endmodule
