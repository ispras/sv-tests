// IEEE Std 1800-2012
//   16. Assertions
//    16.12 Declaring properties
//     16.12.17 Recursive properties

// ! TYPE: POSITIVE

module top;

  reg s1, s2;
  reg phase1_prop, phase2_prop;

  property prop_always(p);
    p and (1'b1 |=> prop_always(p));
  endproperty

  property p1(s,p);
    s |=> prop_always(p);
  endproperty

  property prop_weak_until(p,q);
    q or (p and (1'b1 |=> prop_weak_until(p, q)));
  endproperty

  property p2(s,p,q);
    s |=> prop_weak_until(p,q);
  endproperty

  property check_phase1;
    s1 |-> (phase1_prop and (1'b1 |=> check_phase2));
  endproperty

  property check_phase2;
    s2 |-> (phase2_prop and (1'b1 |=> check_phase1));
  endproperty

endmodule
