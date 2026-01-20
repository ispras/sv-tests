// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.2 Module definitions
//     23.2.2 Port declarations
//      23.2.2.4 Default port values

// ! TYPE: POSITIVE

parameter logic [7:0] My_DataIn = 8'hFF;

module bus_conn (dataout, datain);
  output logic [7:0] dataout;
  input [7:0] datain;
  wire [7:0] datain_eff = (datain === {8{1'bz}}) ? My_DataIn : datain;
  assign dataout = datain_eff;
endmodule

module top(output logic [31:0] dataout, input [7:0] datain);

  parameter logic [7:0] My_DataIn = 8'h00;

  // Constant literal overrides default in 'bus_conn' definition
  bus_conn bconn0(dataout[31:24], 8'h0F);

  // Omitted port for 'datain', default parameter value 8'hFF in
  // 'bus_conn' used
  bus_conn bconn1(dataout[23:16]);

  // The parameter value 8'h00 from the instantiating scope is used
  bus_conn bconn2(dataout[15:8], My_DataIn);

  bus_conn bconn3(dataout[7:0]);

endmodule
