// IEEE Std 1364-2005
//   3. Lexical conventions
//    3.8 Attributes
//      3.8.1 Examples
//        Example 1

// ! TYPE: POSITIVE

module test;

  reg foo;

  initial begin
    (* full_case, parallel_case *)
    case (foo)
      default:; // <rest_of_case_statement>
    endcase

    (* full_case = 1 *)
    (* parallel_case = 1 *) // Multiple attribute instances also OK
    case (foo)
      default:; // <rest_of_case_statement>
    endcase
    
    (* full_case, // no value assigned
    parallel_case = 1 *)
    case (foo)
      default:; // <rest_of_case_statement>
    endcase
  end
endmodule
