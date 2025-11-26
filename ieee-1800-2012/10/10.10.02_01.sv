// IEEE Std 1800-2012
//   10. Assignment statements
//    10.10 Unpacked array concatenation
//     10.10.2 Relationship with other constructs that use concatenation syntax

// ! TYPE: POSITIVE

module top;

  string S, hello;
  string SA[2];
  byte B;
  byte BA[2];

  initial begin
    hello = "hello";
    S = {hello, " world"}; // string concatenation: "hello world"
    SA = {hello, " world"}; // array concatenation: SA[0]="hello", SA[1]=" world"
    B = {4'h6, 4'hf}; // vector concatenation: B=8'h6f
    BA = {4'h6, 4'hf}; // array concatenation: BA[0]=8'h06, BA[1]=8'h0f
  end

endmodule
