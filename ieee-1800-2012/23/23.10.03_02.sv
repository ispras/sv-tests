// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.10 Overriding module parameters
//     23.10.3 Parameter dependence

// ! TYPE: POSITIVE

class C;
endclass

module top #(type T = C, T p = 4,
             type T2, T2 p2 = 4
            ) () ;
endmodule
