// IEEE Std 1800-2012
//   35. Direct programming interface
//    35.4 Global name space of imported and exported functions

// ! TYPE: POSITIVE

function int f();
endfunction

function int \f+ ();
endfunction

export "DPI-C" f_plus = function \f+ ; // 'f+' exported as 'f_plus'
export "DPI-C" function f; // 'f' exported under its own name
import "DPI-C" init_1 = function void \init[1] (); // 'init_1' is a linkage name
import "DPI-C" \begin = function void \init[2] (); // 'begin' is a linkage name

module top();
endmodule