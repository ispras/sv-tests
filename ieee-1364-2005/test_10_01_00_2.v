// IEEE Std 1364-2005
//   10. Tasks and functions
//     10.1 Distinctions between tasks and functions
//       A word-switching function would return the switched word as the return value of the
//       function. Thus, the function call for the function switch_bytes could look like the
//       following example.

// ! TYPE: POSITIVE

module test;

  reg old_word, new_word;

  function switch_bytes;
    input old_word;
    begin
      switch_bytes = old_word; // for simplicity
    end
  endfunction

  initial begin
    new_word = switch_bytes(old_word);
  end
endmodule
