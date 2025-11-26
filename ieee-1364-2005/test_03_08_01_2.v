// IEEE Std 1364-2005
//   3. Lexical conventions
//    3.8 Attributes
//      3.8.1 Examples
//        Example 2

// ! TYPE: POSITIVE

module test;

  reg foo;

  initial begin
    (* full_case *) // parallel_case not specified
    case (foo)
      default:; // <rest_of_case_statement>
    endcase

    (* full_case = 1, parallel_case = 0 *)
    case (foo)
      default:; // <rest_of_case_statement>
    endcase
  end
endmodule
