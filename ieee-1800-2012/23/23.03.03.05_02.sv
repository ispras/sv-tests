// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.3 Module instances (hierarchy)
//     23.3.3 Port connection rules
//      23.3.3.5 Unpacked array ports and arrays of instances

// ! TYPE: POSITIVE

module DFF(output logic q, input logic d, input logic clk);
  assign q = d;
endmodule

module top #(M = 3, N = 4) (input [M - 1:0] in,
                            output [M - 1:0] out, input clk);

  typedef logic T [M - 1:0][1:N];
  T Ins, Outs;

  DFF dff[M - 1:0][1:N](Outs, Ins, clk);

  for (genvar I = M - 1; I >= 0; I--) begin
    for (genvar J = 1; J <= N; J++) begin
      case (J)
        1: begin
          assign out[I] = Outs[I][1];
          assign Ins[I][J] = Outs[I][2];
        end
        default: assign Ins[I][J] = Outs[I][J + 1];
        N: assign Ins[I][N] = in[I];
      endcase
    end
  end
endmodule
