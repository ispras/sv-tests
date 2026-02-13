// IEEE Std 1800-2012
//   6. Data types
//    6.19 Enumerations
//     6.19.5 Enumerated type methods
//      6.19.5.7 Using enumerated type methods

// ! TYPE: POSITIVE

module top;
  typedef enum {red, green, blue, yellow} Colors;
  Colors c = c.first;

  initial begin
    forever begin
      $display("%s : %d\n", c.name, c);
      if(c == c.last) break;
      c = c.next;
    end
  end
endmodule
