// IEEE Std 1800-2012
//   6. Data types
//    6.24 Casting
//     6.24.3 Bit-stream casting

// ! TYPE: POSITIVE

module top;
  typedef struct {
    byte length;
    shortint address;
    byte payload[];
    byte chksum;
  } Packet;

  function Packet genPkt();
    Packet p;
    void'(randomize(p)
      with {p.length > 1 && p.payload.size == p.length;});
    p.chksum = p.payload.xor();
    return p;
  endfunction

  typedef byte channel_type[$];
  channel_type channel;

  Packet p;
  int size;

  initial begin
    channel = {channel, channel_type'(genPkt())};

    size = channel[0] + 4;
    p = Packet'(channel[0:size - 1]); // convert stream to 'Packet'
    channel = channel[size:$]; // update the stream so it now lacks that packet
  end
endmodule
