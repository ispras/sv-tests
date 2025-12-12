// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.5 Constraint blocks
//     18.5.4 Distribution

// ! TYPE: POSITIVE

module top;

  virtual class C;
    rand int x;
    function new();
      this.x = 0;
    endfunction

    constraint dist1 {
      x dist {100 := 1, 200 := 2, 300 := 5};
    }

    constraint dist2 {
      x != 200;
      x dist {100 := 1, 200 := 2, 300 := 5};
    }

    constraint dist3 {
      x dist {[100:102] := 1, 200 := 2, 300 := 5};
    }

    constraint dist4 {
      x dist {[100:102] :/ 1, 200 := 2, 300 := 5};
    }
  endclass

endmodule
