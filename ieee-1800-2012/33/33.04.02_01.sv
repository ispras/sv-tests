// IEEE Std 1800-2012
//   33. Configuring the contents of a design
//    33.4 Configurations
//     33.4.2 Hierarchical configurations

// ! TYPE: NEGATIVE

module a();
endmodule

module bot();
  a a1();
endmodule

module top();
  bot bot();
endmodule

config bot;
  design lib1.bot;
  default liblist lib1 lib2;
  instance bot.a1 liblist lib3;
endconfig

config top;
  design lib1.top;
  default liblist lib2 lib1;
  instance top.bot use lib1.bot:config;
  instance top.bot.a1 liblist lib4;
  // ERROR - cannot set 'liblist' for 'top.bot.a1' from this config
endconfig
