// IEEE Std 1800-2012
//   5. Lexical conventions
//    5.9 String literals

// ! TYPE: POSITIVE

module top;
  initial begin
    $display("Humpty Dumpty sat on a wall. \
Humpty Dumpty had a great fall.");
  end

  initial begin
    $display("Humpty Dumpty sat on a wall.\n\
Humpty Dumpty had a great fall.");
  end

  byte c1 = "A";
  bit [7:0] d = "\n";
  bit [8*12:1] stringvar = "Hello world\n";
  bit [0:11] [7:0] stringvar_multi = "Hello world\n";
  byte c3 [0:12] = "hello world\n";
endmodule