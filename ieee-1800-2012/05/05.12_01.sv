// IEEE Std 1800-2012
//   5. Lexical conventions
//    5.12 Attributes

// ! TYPE: POSITIVE

module top;
  logic [1:0] a;
  logic [1:0] result1, result2, result3;

  initial begin
    for (int i = 0; i < 4; i++) begin
      a = i;

      // Example 1: 'full_case' and 'parallel_case' combined
      (* full_case, parallel_case *)
      case (a)
        2'b00: result1 = 2'b01;
        2'b01: result1 = 2'b10;
        2'b10: result1 = 2'b11;
        2'b11: result1 = 2'b00;
      endcase

      // Example 2: Separate attribute instances with values
      (* full_case = 1 *)
      (* parallel_case = 1 *)
      case (a)
        2'b00: result2 = 2'b11;
        2'b01: result2 = 2'b00;
        2'b10: result2 = 2'b01;
        2'b11: result2 = 2'b10;
      endcase

      // Example 3: Attributes with mixed
      // assignment (one with value, one without)
      (* full_case, // no value assigned
        parallel_case = 1 *)
      case (a)
        2'b00: result3 = 2'b10;
        2'b01: result3 = 2'b11;
        2'b10: result3 = 2'b00;
        2'b11: result3 = 2'b01;
      endcase
    end
  end
endmodule