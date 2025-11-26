// IEEE Std 1364-2005
//   12. Hierarchical structures
//     12.4 Generate constructs
//       12.4.2 Conditional generate constructs
//         This generate construct will select at most one of the generate blocks named u1. The
//         hierarchical name of the gate instantiation in that block would be test.u1.g1. When
//         nesting if-generate constructs, the else always belongs to the nearest if construct.

// ! TYPE: POSITIVE

module test;

  parameter p = 0, q = 0;
  wire a, b, c;

  //---------------------------------------------------------
  // Code to either generate a u1.g1 instance or no instance.
  // The u1.g1 instance of one of the following gates:
  // (and, or, xor, xnor) is generated if
  // {p,q} == {1,0}, {1,2}, {2,0}, {2,1}, {2,2}, {2, default}
  //---------------------------------------------------------

  if (p == 1)
    if (q == 0)
      begin : u1          // If p==1 and q==0, then instantiate
        and g1(a, b, c);  // AND with hierarchical name test.u1.g1
      end
    else if (q == 2)
      begin : u1          // If p==1 and q==2, then instantiate
        or g1(a, b, c);   // OR with hierarchical name test.u1.g1
      end
                          // "else" added to end "if (q == 2)" statement
    else;                 // If p==1 and q!=0 or 2, then no instantiation
  else if (p == 2)
    case (q)
    0, 1, 2:
      begin : u1          // If p==2 and q==0,1, or 2, then instantiate
        xor g1(a, b, c);  // XOR with hierarchical name test.u1.g1
      end
    default :
      begin : u1          // If p==2 and q!=0,1, or 2, then instantiate
        xnor g1(a, b, c); // XNOR with hierarchical name test.u1.g1
      end
    endcase
endmodule
