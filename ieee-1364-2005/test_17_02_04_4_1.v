// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.2 File input-output system tasks and functions
//       17.2.4 Reading data from a file
//         17.2.4.4 Reading binary data
//           The example reads a binary data from the file specified by fd into the reg myreg or
//           the memory mem. The start is an optional argument. If present, start shall be used as
//           the address of the first element in the memory to be loaded. If not present, the lowest
//           numbered location in the memory shall be used. The count is an optional argument. If
//           present, count shall be the maximum number of locations in mem that shall be loaded. If
//           not supplied, the memory shall be filled with what data are available. The start and
//           count are ignored if $fread is loading a reg.

// ! TYPE: POSITIVE

module test;

  integer code, fd, count;
  reg [31:0] myreg;
  reg [31:0] mem [15:0];
  reg [3:0] start;

  initial begin
    code = $fread(myreg, fd);
    code = $fread(mem, fd);
    code = $fread(mem, fd, start);
    code = $fread(mem, fd, start, count);
    code = $fread(mem, fd, , count);
  end
endmodule
