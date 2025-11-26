// IEEE Std 1364-2005
//   10. Tasks and functions
//     10.4 Functions and function calling
//       10.4.1 Function declarations
//         The following example defines a function called getbyte, using a range specification.

// ! TYPE: POSITIVE

module test;

  function [7:0] getbyte;
    input [15:0] address;
    begin
      // code to extract low-order byte from addressed word

      getbyte = 0; // set 0 for simplicity
    end
  endfunction
endmodule
