// IEEE Std 1800-2012
//   8. Classes
//    8.5 Object properties and object parameter data

// ! TYPE: POSITIVE

module top;

  class Packet ;
    bit [3:0] command;
    bit [40:0] address;
    bit [4:0] master_id;
    integer time_requested;
    integer time_issued;
    integer status;

    typedef enum {ERR_OVERFLOW = 10, ERR_UNDERFLOW = 1123} PCKT_TYPE;

    const integer buffer_size = 100;
    const integer header_size;

    function new();
      command = 4'd0;
      address = 41'b0;
      master_id = 5'bx;
      header_size = 10;
    endfunction
  endclass

  Packet p = new;
  int var1;
  integer packet_time;

  initial begin
    p.command = "INIT";
    p.address = $random;
    packet_time = p.time_requested;
    var1 = p.buffer_size;
  end

  initial $display (p.ERR_OVERFLOW);

endmodule
