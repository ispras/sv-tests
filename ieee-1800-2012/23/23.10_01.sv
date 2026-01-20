// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.10 Overriding module parameters

// ! TYPE: POSITIVE

`define LOG2(VALUE) ((VALUE) < (1) ? 0 : 1)

module top #(MSB = 3, LSB = 0) // parameter port list parameters
            (input wire [MSB:LSB] in,
             input wire clk, read, write, reset,
             output logic [MSB:LSB] out,
             output logic full, empty);
  parameter DEPTH = 4; // module item parameter

  // These constants are local, and cannot be overridden.
  // They can be affected by altering the value parameters above
  localparam FIFO_MSB = DEPTH*MSB;
  localparam FIFO_LSB = LSB;

  logic [FIFO_MSB:FIFO_LSB] fifo;
  logic [`LOG2(DEPTH):0] depth;

  always @(posedge clk or posedge reset) begin
    casez ({read, write, reset})
      // implementation of 'fifo'
      3'b???: out = 0;
    endcase
  end
endmodule
