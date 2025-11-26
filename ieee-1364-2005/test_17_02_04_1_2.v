// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.2 File input-output system tasks and functions
//       17.2.4 Reading data from a file
//         17.2.4.1 Reading a character at a time
//           Example 2 - inserts the character specified by c into the buffer specified by file
//           descriptor fd . The character c shall be returned by the next $fgetc call on that file
//           descriptor. The file itself is unchanged. If an error occurs pushing a character onto a
//           file descriptor, then code is set to EOF. Otherwise, code is set to zero. Applications
//           can call $ferror to determine the cause of the most recent error (see 17.2.7).

// ! TYPE: POSITIVE

module test;

  integer fd, code, c;

  initial begin

    fd = $fopen("file.txt");
    code = $ungetc(c, fd);
  end
endmodule
