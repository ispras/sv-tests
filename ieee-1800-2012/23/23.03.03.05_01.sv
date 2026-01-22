// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.3 Module instances (hierarchy)
//     23.3.3 Port connection rules
//      23.3.3.5 Unpacked array ports and arrays of instances

// ! TYPE: POSITIVE

module child(output o, input i[5]);
endmodule : child

module top(output o[8][4], input i[8][4][5]);
  child c[8][4](o, i);
endmodule
