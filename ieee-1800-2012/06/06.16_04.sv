// IEEE Std 1800-2012
//   6. Data types
//    6.16 String data type

// ! TYPE: VARYING

module top;
  typedef logic [15:0] r_t;
  r_t r;
  integer i = 1;
  string b = "";
  string a = {"Hi", b};

  initial begin
    r = r_t'(a); // OK
    b = string'(r); // OK
    b = "Hi"; // OK
    b = {5{"Hi"}}; // OK
    a = {i{"Hi"}}; // OK (non-constant replication)
`ifdef NEGATIVE_TEST
    r = {i{"Hi"}}; // invalid (non-constant replication)
`endif
    a = {i{b}}; // OK
    a = {a,b}; // OK
    a = {"Hi",b}; // OK
    r = {"H",""}; // yields "H\0". "" is converted to 8'b0
    b = {"H",""}; // yields "H". "" is the empty string
    a[0] = "h"; // OK, same as 'a[0] = "cough"'
`ifdef NEGATIVE_TEST
    a[0] = b; // invalid, requires 'a' cast
`endif
    a[1] = "\0"; // ignored, 'a' is unchanged
  end
endmodule
