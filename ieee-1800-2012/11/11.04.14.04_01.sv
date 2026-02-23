// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.4 Operator descriptions
//     11.4.14 Streaming operators (pack/unpack)
//      11.4.14.4 Streaming dynamically sized data

// ! TYPE: POSITIVE

module top;

  byte stream[$]; // byte stream

  class Packet;
    rand int header;
    rand int len;
    rand byte payload[];
    int crc;

    constraint G {len > 1; payload.size == len;}

    function void post_randomize; crc = payload.sum; endfunction
  endclass

  initial begin
    Packet p_send, p_recv;

    begin // Create random packet and transmit
      byte q[$];
      p_send = new;
      void'(p_send.randomize());
      q = {<< byte{p_send.header, p_send.len,
           p_send.payload, p_send.crc}}; // pack
      stream = {stream, q}; // append to 'stream'
    end

    begin // Receive packet, unpack, and remove
      byte q[$];
      p_recv = new;
      {<< byte{p_recv.header, p_recv.len,
               p_recv.payload with [0 +: p_recv.len], p_recv.crc}} = stream;
      stream = stream[$bits(p_recv) / 8 : $]; // remove packet
    end
  end

endmodule
