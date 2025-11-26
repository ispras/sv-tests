// IEEE Std 1800-2012
//   8. Classes
//    8.6 Object methods

// ! TYPE: VARYING

module top;

  class Packet ;
    bit [3:0] command;
    bit [40:0] address;
    bit [4:0] master_id;
    integer time_requested;
    integer time_issued;
    integer status;
    const integer header_size;

    function new();
      command = 4'd0;
      address = 41'b0;
      master_id = 5'bx;
      header_size = 10;
    endfunction

    function integer current_status();
      current_status = status;
    endfunction
  endclass

  integer status;

  Packet p = new;

  initial begin
    status = p.current_status();
`ifdef NEGATIVE_TEST
    // The preceding assignment to 'status' cannot be written as follows:
    status = current_status(p);
`endif
  end

endmodule
