// IEEE Std 1800-2012
//   21. Input/output system tasks and system functions
//    21.3 File input/output system tasks and system functions
//     21.3.2 File output system tasks

// ! TYPE: POSITIVE

module top(input clock, acc, f, a, b);

  integer messages, broadcast, cpu_chann, alu_chann, mem_chann, address;

  initial begin
    cpu_chann = $fopen("cpu.dat");
    if (cpu_chann == 0) $finish;
    alu_chann = $fopen("alu.dat");
    if (alu_chann == 0) $finish;
    mem_chann = $fopen("mem.dat");
    if (mem_chann == 0) $finish;
    messages = cpu_chann | alu_chann | mem_chann;
    // 'broadcast' includes standard output
    broadcast = 1 | messages;

    $fdisplay(broadcast, "system reset at time %d", $time);
    $fdisplay(messages, "Error occurred on address bus",
              " at time %d, address = %h", $time, address);
    forever @(posedge clock)
      $fdisplay(alu_chann, "acc = %h f = %h a = %h b = %h", acc, f, a, b);
  end

endmodule
