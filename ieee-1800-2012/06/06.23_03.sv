// IEEE Std 1800-2012
//   6. Data types
//    6.23 Type operator

// ! TYPE: POSITIVE

module addfixed_int #(parameter type T = logic)( input [12:0] A_bus, B_bus);
endmodule

module add_float #(parameter type T = real)(input [12:0] A_bus, B_bus);
endmodule

module top;
  bit [12:0] A_bus, B_bus;
  parameter type bus_t = type(A_bus);

  generate
    case (type(bus_t))
      type(bit[12:0]): addfixed_int #(bus_t) i1 (A_bus, B_bus);
      type(real): add_float #(type(A_bus)) f1 (A_bus, B_bus);
    endcase
  endgenerate
endmodule
