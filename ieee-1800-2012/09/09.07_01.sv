// IEEE Std 1800-2012
//   9. Processes
//    9.7 Fine-grain process control

// ! TYPE: POSITIVE

module top;

  class process;
    typedef enum { FINISHED, RUNNING, WAITING, SUSPENDED, KILLED } state;

    static function process self();
    endfunction
    function state status();
    endfunction
    function void kill();
    endfunction
    task await();
    endtask
    function void suspend();
    endfunction
    function void resume();
    endfunction
    function void random( int seed );
    endfunction
    function string get_rand_state();
    endfunction
    function void set_rand_state( string state );
    endfunction
  endclass

  task automatic do_n_way( int N );
    process job[] = new [N];

    foreach (job[j])
      fork
        automatic int k = j;
        begin job[k] = process::self();
        end
      join_none
    foreach (job[j]) // wait for all processes to start
      wait( job[j] != null );

    job[1].await(); // wait for first process to finish

    foreach (job[j]) begin
      if ( job[j].status != process::FINISHED )
        job[j].kill();
    end
  endtask

endmodule
