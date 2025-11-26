// IEEE Std 1800-2012
//   16. Assertions
//    16.13 Multiclock support
//     16.13.3 Clock flow

// ! TYPE: POSITIVE

module top(input c, x, y, d, z, v, w);

  property s1;
    @(c) x |=> @(c) y ##1 @(d) z;
  endproperty

  property s2;
    @(c) x |=> y ##1 @(d) z;
  endproperty

  property s3;
    @(c) x ##1 y |=> @(d) z;
  endproperty

  property s4;
    @(c) x |=> y |=> @(d) z;
  endproperty

  property s5;
    @(c) x ##0 y |=> @(d) z;
  endproperty

  property s6;
    @(c) x |-> y |=> @(d) z;
  endproperty

  property s7;
    @(c) w ##1 (x ##1 @(d) y) |=> z;
  endproperty

  property s8;
    @(c) v |=> (w ##1 @(d) x) and (y ##1 z);
  endproperty
endmodule
