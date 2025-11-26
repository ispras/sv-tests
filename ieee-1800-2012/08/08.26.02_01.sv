// IEEE Std 1800-2012
//   8. Classes
//    8.26 Interface classes
//     8.26.2 Extends versus implements

// ! TYPE: POSITIVE

module top;

  interface class PutImp#(type PUT_T = logic);
    pure virtual function void put(PUT_T a);
  endclass

  interface class GetImp#(type GET_T = logic);
    pure virtual function GET_T get();
  endclass

  class MyQueue #(type T = logic, int DEPTH = 1);
    T PipeQueue[$: DEPTH - 1];

    virtual function void deleteQ();
      PipeQueue.delete();
    endfunction
  endclass

  class Fifo #(type T = logic, int DEPTH = 1)
    extends MyQueue#(T, DEPTH)
    implements PutImp#(T), GetImp#(T);

    virtual function void put(T a);
      PipeQueue.push_back(a);
    endfunction

    virtual function T get();
      get = PipeQueue.pop_front();
    endfunction
  endclass

  virtual class XFifo#(type T_in = logic, type T_out = logic, int DEPTH = 1)
    extends MyQueue#(T_out)
    implements PutImp#(T_in), GetImp#(T_out);
    pure virtual function T_out translate(T_in a);

    virtual function void put(T_in a);
      PipeQueue.push_back(translate(a));
    endfunction

    virtual function T_out get();
      get = PipeQueue.pop_front();
    endfunction
  endclass

endmodule
