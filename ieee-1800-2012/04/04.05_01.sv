// IEEE Std 1800-2012
//   4. Scheduling semantics
//    4.5 SystemVerilog simulation reference algorithm

// ! TYPE: POSITIVE

typedef enum {
  Preponed,
  PreActive,
  Active,
  PostObserved,
  Reactive,
  PostReNBA,
  PrePostponed,
  Postponed
} region_t;

typedef struct {
  bit is_update;
} event_t;

typedef event_t event_queue_t[$];

module simulation_engine;

  event_queue_t queues[region_t];

  time T;

  task execute_simulation();
    T = 0;
    // Initialize values (external)
    // Schedule initial events (external)
    while (some_time_slot_nonempty()) begin
      execute_time_slot(T);
      // Advance 'T' if needed (simplified)
    end
  endtask

  function bit some_time_slot_nonempty();
    return (queues[Preponed].size() > 0 || queues[PreActive].size() > 0 ||
            queues[Active].size() > 0 || queues[PostObserved].size() > 0 ||
            queues[Reactive].size() > 0 || queues[PostReNBA].size() > 0 ||
            queues[PrePostponed].size() > 0 || queues[Postponed].size() > 0);
  endfunction

  task execute_time_slot(time t);
    region_t R;
    execute_region(Preponed);
    execute_region(PreActive);
    while (any_region_nonempty(Active, PrePostponed)) begin
      while (any_region_nonempty(Active, PostObserved)) begin
        execute_region(Active);
        R = first_nonempty_region(Active, PostObserved);
        // Move events in 'R' to the 'Active' region
        case (R)
          PostObserved: begin
            queues[Active] = {queues[Active], queues[PostObserved]};
            queues[PostObserved].delete();
          end
          default: $error("Unexpected region in execute_time_slot");
        endcase
      end
      while (any_region_nonempty(Reactive, PostReNBA)) begin
        execute_region(Reactive);
        R = first_nonempty_region(Reactive, PostReNBA);
        // Move events in 'R' to the 'Reactive' region
        case (R)
          PostReNBA: begin
            queues[Reactive] = {queues[Reactive], queues[PostReNBA]};
            queues[PostReNBA].delete();
          end
          default: $error("Unexpected region in execute_time_slot");
        endcase
      end
      if (all_regions_empty(Active, PostReNBA)) begin
        execute_region(PrePostponed);
      end
    end
    execute_region(Postponed);
  endtask

  function bit any_region_nonempty(region_t start, region_t last_region);
    int r_int;
    for (r_int = start; r_int <= last_region; r_int++) begin
      region_t r = region_t'(r_int);
      if (queues[r].size() > 0) return 1;
    end
    return 0;
  endfunction

  function region_t first_nonempty_region(region_t start, region_t last_region);
    int r_int;
    for (r_int = start; r_int <= last_region; r_int++) begin
      region_t r = region_t'(r_int);
      if (queues[r].size() > 0) return r;
    end
    return start;
  endfunction

  function bit all_regions_empty(region_t start, region_t last_region);
    return !any_region_nonempty(start, last_region);
  endfunction

  task execute_region(region_t region);
    while (queues[region].size() > 0) begin
      event_t E;
      E = queues[region].pop_front();
      if (E.is_update) begin
        // update the modified object;
        // schedule evaluation event for any process sensitive to the object;
      end else begin
        // evaluate the process associated with the event and possibly
        // schedule further events for execution;
      end
    end
  endtask

endmodule

module top;

  simulation_engine sim();

  logic a, b, c;
  logic [7:0] counter;

  initial begin
    a = 0;
    b = 0;
    c = 0;
    counter = 0;

    sim.queues[Active].push_back('{is_update: 1});

    sim.execute_simulation();
    $display("Simulation completed at time %t", $time);
    $finish;
  end

  always @(a or b) begin
    c = a & b;
  end

  always @(posedge c) begin
    counter = counter + 1;
  end

endmodule
