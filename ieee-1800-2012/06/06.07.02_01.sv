// IEEE Std 1800-2012
//   6. Data types
//    6.7 Net declarations
//     6.7.2 Net declarations with user-defined nettypes

// ! TYPE: POSITIVE

module top;
  // example in 6.6.7
  typedef struct {
    real field1;
    bit field2;
  } T;

  function automatic T Tsum (input T driver[]);
    Tsum.field1 = 0.0;
    foreach (driver[i])
      Tsum.field1 += driver[i].field1;
  endfunction

  // an unresolved nettype 'wT' whose data type is 'T'
  // Refer to example in 6.6.7 for declaration of the data type 'T'
  nettype T wT;

  // a nettype 'wTsum' whose data type is 'T' and
  // resolution function is 'Tsum'
  // Refer to example in 6.6.7 for the declaration of 'Tsum'
  nettype T wTsum with Tsum;

  // a net of unresolved nettype 'wT'
  wT w1;

  // an array of nets, each net element is of unresolved nettype 'wT'
  wT w2[8];

  // a net of resolved nettype 'wTsum' and resolution function 'Tsum'
  wTsum w3;

  // an array of nets, each net is of resolved nettype 'wTsum'
  wTsum w4[8];

  // user-defined data type 'TR' which is an array of reals
  typedef real TR[5];

  // an unresolved nettype 'wTR' with data type 'TR'
  nettype TR wTR;

  // a net with unresolved nettype 'wTR' and data type 'TR'
  wTR w5;

  // an array of nets, each net has an unresolved nettype 'wTR'
  // and data type 'TR'
  wTR w6[8];
endmodule
