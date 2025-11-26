// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.2 File input-output system tasks and functions
//       17.2.2 File output system tasks

// ! TYPE: POSITIVE

module test(clock);

  input clock;
  integer messages, broadcast, cpu_chann, alu_chann, mem_chann;
  reg address, acc, f, a, b;

  initial begin

    cpu_chann = $fopen("cpu.dat");

    if (cpu_chann == 0)
      $finish;

    alu_chann = $fopen("alu.dat");

    if (alu_chann == 0)
      $finish;

    mem_chann = $fopen("mem.dat");

    if (mem_chann == 0)
      $finish;

    messages = cpu_chann | alu_chann | mem_chann;

    // broadcast includes standard output
    broadcast = 1 | messages;

    // The following file output tasks show how the channels opened in the preceding example
    // might be used:
    $fdisplay(broadcast, "system reset at time %d", $time);
    $fdisplay(messages, "Error occurred on address bus at time %d, address = %h", $time, address);
    forever @(posedge clock)
      $fdisplay(alu_chann, "acc= %h f=%h a=%h b=%h", acc, f, a, b);
  end
endmodule
