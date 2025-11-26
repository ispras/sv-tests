// IEEE Std 1800-2012
//   8. Classes
//    8.9 Static class properties

// ! TYPE: POSITIVE

class Packet;
    integer addr;
    integer data;

    static integer fileID = $fopen("data.txt", "r");

    function new(integer addr, integer data);
        this.addr = addr;
        this.data = data;
    endfunction

    function integer readChar();
        return $fgetc(fileID);
    endfunction
endclass

module top;

  Packet p = new(100, 200);
  integer char = p.readChar();

endmodule
