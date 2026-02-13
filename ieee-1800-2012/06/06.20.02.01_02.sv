// IEEE Std 1800-2012
//   6. Data types
//    6.20 Constants
//     6.20.2 Value parameters
//      6.20.2.1 $ as a parameter value

// ! TYPE: POSITIVE

interface quiet_time_checker #(parameter min_quiet = 0,
                               parameter max_quiet = 0)
                              (input logic clk, reset_n, logic [1:0] en);
  generate
    if (!$isunbounded(max_quiet) && max_quiet == 0) begin
      property quiet_time;
        @(posedge clk) reset_n |-> ($countones(en) == 1);
      endproperty
      a1: assert property (quiet_time);
    end
    else begin
      property quiet_time;
        @(posedge clk)
          (reset_n && ($past(en) != 0) && en == 0)
          |->(en == 0)[*min_quiet:max_quiet]
        ##1 ($countones(en) == 1);
      endproperty
      a1: assert property (quiet_time);
    end

    if ((min_quiet == 0) && $isunbounded(max_quiet))
      $warning("warning_msg");
  endgenerate
endinterface

module top(clk, enables);
  input logic clk;
  input logic [1:0] enables;

  quiet_time_checker #(0, 0) quiet_never (clk, 1, enables);
  quiet_time_checker #(2, 4) quiet_in_window (clk, 1, enables);
  quiet_time_checker #(0, $) quiet_any (clk, 1, enables);
endmodule
