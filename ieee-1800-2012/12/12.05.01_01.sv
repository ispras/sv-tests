// IEEE Std 1800-2012
//   12. Procedural programming statements
//    12.5 Case statement
//     12.5.1 Case statement with do-not-cares

// ! TYPE: POSITIVE

module top;

  logic [7:0] ir;

  task instruction1(input logic [7:0] ir);
    $display("1: ir is %b", ir);
  endtask

  task instruction2(input logic [7:0] ir);
    $display("2: ir is %b", ir);
  endtask

  task instruction3(input logic [7:0] ir);
    $display("3: ir is %b", ir);
  endtask

  task instruction4(input logic [7:0] ir);
    $display("4: ir is %b", ir);
  endtask

  initial begin
    casez (ir)
      8'b1???????: instruction1(ir);
      8'b01??????: instruction2(ir);
      8'b00010???: instruction3(ir);
      8'b000001??: instruction4(ir);
    endcase
  end

endmodule
