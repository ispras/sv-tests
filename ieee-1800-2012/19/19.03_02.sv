// IEEE Std 1800-2012
//   19. Functional coverage
//    19.3 Defining the coverage model: covergroup

// ! TYPE: POSITIVE

module top(input clk);

  enum { red, green, blue } color;
  bit [3:0] pixel_adr, pixel_offset, pixel_hue;

  covergroup g2 @(posedge clk);
    Hue: coverpoint pixel_hue;
    Offset: coverpoint pixel_offset;

    AxC: cross color, pixel_adr; // cross 2 variables
                                 // (implicitly declared coverpoints)
    all: cross color, Hue, Offset; // cross 1 variable and 2 coverpoints
  endgroup

endmodule
