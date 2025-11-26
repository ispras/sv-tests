// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.2 File input-output system tasks and functions
//       17.2.5 File positioning
//         Example 1 - returns in  pos the offset from the beginning of the file of the current
//         byte of the file fd, which shall be read or written by a subsequent operation on that
//         file descriptor.

// ! TYPE: POSITIVE

module test;

  integer fd;
  integer pos;

  initial begin
    pos = $ftell(fd);
  end
endmodule
