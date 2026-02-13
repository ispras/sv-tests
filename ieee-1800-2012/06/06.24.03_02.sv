// IEEE Std 1800-2012
//   6. Data types
//    6.24 Casting
//     6.24.3 Bit-stream casting

// ! TYPE: POSITIVE

module top;
  typedef struct {
    shortint address;
    logic [3:0] code;
    byte command [2];
  } Control;

  typedef bit Bits [36:1];
  Control p;
  Bits stream[$];

  Bits b;
  Control q;

  initial begin
    p = '{default:0}; // initialize control packet
    stream.push_back(Bits'(p)); // append packet to unpacked queue of 'Bits'

    b = stream.pop_front(); // get packet (as 'Bits') from stream
    q = Control'(b); // convert packet bits back to a 'Control' packet
  end
endmodule
