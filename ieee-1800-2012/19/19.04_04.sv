// IEEE Std 1800-2012
//   19. Functional coverage
//    19.4 Using covergroup in classes

// ! TYPE: POSITIVE

module top(input clk);

  class C1;
    bit [7:0] x;

    covergroup cv (int arg) @(posedge clk);
      option.at_least = arg;
      coverpoint x;
    endgroup

    function new(int p1);
      cv = new(p1);
    endfunction
  endclass

  initial begin
    C1 obj = new(4);
  end

endmodule
