// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.2 File input-output system tasks and functions
//       17.2.4 Reading data from a file
//         17.2.4.1 Reading a character at a time
//           Example 1 - reads a byte from the file specified by  fd. If an error occurs reading
//           from the file, then c is set to EOF(-1). The code defines the width of the reg to
//           be wider than 8 bits so that a return value from $fgetc of EOF(-1) can be
//           differentiated from the character code  0xFF. Applications can call $ferror to
//           determine the cause of the most recent error (see 17.2.7).

// ! TYPE: POSITIVE

module test;

  integer fd, c;

  initial begin

    fd = $fopen("file.txt");
    c = $fgetc(fd);
  end
endmodule
