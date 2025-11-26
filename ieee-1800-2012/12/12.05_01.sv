// IEEE Std 1800-2012
//   12. Procedural programming statements
//    12.5 Case statement

// ! TYPE: POSITIVE

module top;

  logic [15:0] data;
  logic [9:0] result;

  initial begin
    case (data)
      16'd0: result = 10'b0111111111;
      16'd1: result = 10'b1011111111;
      16'd2: result = 10'b1101111111;
      16'd3: result = 10'b1110111111;
      16'd4: result = 10'b1111011111;
      16'd5: result = 10'b1111101111;
      16'd6: result = 10'b1111110111;
      16'd7: result = 10'b1111111011;
      16'd8: result = 10'b1111111101;
      16'd9: result = 10'b1111111110;
      default result = 'x;
    endcase
  end

endmodule
