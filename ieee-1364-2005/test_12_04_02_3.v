// IEEE Std 1364-2005
//   12. Hierarchical structures
//     12.4 Generate constructs
//       12.4.2 Conditional generate constructs
//         Generate with a case to handle widths less than 3.

// ! TYPE: POSITIVE

module adder_1bit(co, sum, a, b, ci);
  input co, sum, a, b, ci;
endmodule

module adder_2bit(co, sum, a, b, ci);
  input co, sum, a, b, ci;
endmodule

module adder_cla(co, sum, a, b, ci);
  parameter WIDTH = 1;
  input co, sum, a, b, ci;
endmodule

module test;

  parameter WIDTH = 0;
  reg co, sum, a, b, ci;
  generate
    case (WIDTH)
      1: begin : adder        // 1-bit adder implementation
        adder_1bit x1(co, sum, a, b, ci);
      end
      2: begin : adder        // 2-bit adder implementation
        adder_2bit x1(co, sum, a, b, ci);
      end
      default : begin : adder // others - carry look-ahead adder
        adder_cla #(WIDTH) x1(co, sum, a, b, ci);
      end
    endcase
    // The hierarchical instance name is adder.x1
  endgenerate

endmodule
