// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.10 Queues
//    7.10.4 Updating a queue using assignment and unpacked array concatenation

// ! TYPE: POSITIVE

module top;

  int q[$] = {2, 4, 8};
  int e, pos;

  initial begin
    // assignment                    // method call yielding the
    //                               // same value in variable 'q'
    // ----------------------------- // -------------------------
    q = {q, 6};                      // q.push_back(6)
    q = {e, q};                      // q.push_front(e)
    q = q[1:$];                      // void'(q.pop_front()) or q.delete(0)
    q = q[0:$ - 1];                  // void'(q.pop_back()) or
                                     // q.delete(q.size - 1)
    q = {q[0:pos - 1], e, q[pos:$]}; // q.insert(pos, e)
    q = {q[0:pos], e, q[pos + 1:$]}; // q.insert(pos + 1, e)
    q = {};                          // q.delete()
  end

endmodule
