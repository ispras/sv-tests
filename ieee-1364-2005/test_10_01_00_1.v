// IEEE Std 1364-2005
//   10. Tasks and functions
//     10.1 Distinctions between tasks and functions
//       Either a task or a function can be defined to switch bytes in a 16-bit word. The task would
//       return the switched word in an output argument; therefore, the source code to enable a task
//       called switch_bytes could look like the following example. The task switch_bytes would take
//       the bytes in old_word, reverse their order, and place the reversed bytes in new_word.

// ! TYPE: POSITIVE

module test;

  reg old_word, new_word;

  task switch_bytes;
    input old_word;
    output new_word;
    begin
      new_word = old_word; // just a code for simplicity
    end
  endtask

  initial begin
    switch_bytes(old_word, new_word);
  end
endmodule
