// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.2 File input-output system tasks and functions
//       17.2.4 Reading data from a file
//         17.2.4.2 Reading a line at a time
//           The code below reads characters from the file specified by fd into the reg str until
//           str is filled, or a newline character is read and transferred to str, or an EOF
//           condition is encountered. If str is not an integral number of bytes in length, the most
//           significant partial byte is not used in order to determine the size.

// ! TYPE: POSITIVE

module test;

  integer code, fd;
  reg str;

  initial begin
    code = $fgets(str, fd);
  end
endmodule
