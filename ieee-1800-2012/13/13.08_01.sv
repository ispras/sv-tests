// IEEE Std 1800-2012
//   13. Tasks and functions (subroutines)
//    13.8 Parameterized tasks and functions

// ! TYPE: POSITIVE

virtual class C#(parameter DECODE_W, parameter ENCODE_W = $clog2(DECODE_W));
  static function logic [ENCODE_W - 1:0] ENCODER_f(
      input logic [DECODE_W - 1:0] DecodeIn);
    ENCODER_f = '0;
    for (int i = 0; i < DECODE_W; i++) begin
      if(DecodeIn[i]) begin
        ENCODER_f = i[ENCODE_W - 1:0];
        break;
      end
    end
  endfunction

  static function logic [DECODE_W - 1:0] DECODER_f(
      input logic [ENCODE_W - 1:0] EncodeIn);
    DECODER_f = '0;
    DECODER_f[EncodeIn] = 1'b1;
  endfunction
endclass

module top;

  logic [7:0] encoder_in;
  logic [2:0] encoder_out;
  logic [1:0] decoder_in;
  logic [3:0] decoder_out;

  // Encoder and Decoder Input Assignments
  assign encoder_in = 8'b0100_0000;
  assign decoder_in = 2'b11;

  // Encoder and Decoder Function calls
  assign encoder_out = C#(8)::ENCODER_f(encoder_in);
  assign decoder_out = C#(4)::DECODER_f(decoder_in);

  initial begin
    #50;
    $display("Encoder input = %b Encoder output = %b\n",
             encoder_in, encoder_out);
    $display("Decoder input = %b Decoder output = %b\n",
             decoder_in, decoder_out);
  end

endmodule
