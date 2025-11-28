// IEEE Std 1800-2012
//   14. Clocking blocks
//    14.8 Multiple clocking blocks example

// ! TYPE: POSITIVE

program test( input phi1, input [15:0] data, output logic write,
              input phi2, inout [8:1] cmd, input enable
            );
  reg [8:1] cmd_reg;

  clocking cd1 @(posedge phi1);
    input data;
    output write;
    input state = top.cpu1.state;
  endclocking

  clocking cd2 @(posedge phi2);
    input #2 output #4ps cmd;
    input enable;
  endclocking

  initial begin
    // program begins here
    // user can access 'cd1.data', 'cd2.cmd', etc.
  end

  assign cmd = enable ? cmd_reg: 'x;
endprogram

module mem(input phi1, inout [8:1] cmd, input enable);
endmodule

module cpu(input phi1, input [15:0] data, output logic state);
endmodule

module top;
  logic phi1, phi2;
  wire [8:1] cmd; // cannot be 'logic' (two bidirectional drivers)
  logic [15:0] data;

  test main (phi1, data, write, phi2, cmd, enable);
  cpu cpu1 (phi1, data, write);
  mem mem1 (phi2, cmd, enable);
endmodule
