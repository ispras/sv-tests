// IEEE Std 1800-2012
//   27. Generate constructs
//    27.5 Conditional generate constructs

// ! TYPE: POSITIVE

module adder_1bit(co, sum, a, b, ci);
  output co, sum;
  input a, b, ci;
endmodule

module adder_2bit(co, sum, a, b, ci);
  output co, sum;
  input a, b, ci;
endmodule

module adder_cla(co, sum, a, b, ci);
  output co, sum;
  input a, b, ci;
endmodule

module top;
  parameter WIDTH = 1;

  generate
    case (WIDTH)
      1: begin: adder // 1-bit 'adder' implementation
          adder_1bit x1(co, sum, a, b, ci);
        end
      2: begin: adder // 2-bit 'adder' implementation
          adder_2bit x1(co, sum, a, b, ci);
        end
      default:
        begin: adder // others - carry look-ahead 'adder'
          adder_cla #(WIDTH) x1(co, sum, a, b, ci);
        end
    endcase
    // The hierarchical instance name is 'adder.x1'
  endgenerate
endmodule
