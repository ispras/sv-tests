// IEEE Std 1364-2005
//   10. Tasks and functions
//     10.4 Functions and function calling
//       10.4.3 Calling a function
//         The following example creates a word by concatenating the results of two calls
//         to the function getbyte.

// ! TYPE: POSITIVE

module test(control);

  input control;
  reg [15:0] msbyte, lsbyte;
  reg [30:0] word;

  function [7:0] getbyte (input [15:0] address);
    begin
      // code to extract low-order byte from addressed word

      getbyte = 0; // set 0 for simplicity
    end
  endfunction

  initial begin
    word = control ? {getbyte(msbyte), getbyte(lsbyte)}:0;
  end
endmodule
