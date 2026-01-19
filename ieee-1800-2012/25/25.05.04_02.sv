// IEEE Std 1800-2012
//   25. Interfaces
//    25.5 Modports
//     25.5.4 Modport expressions

// ! TYPE: POSITIVE

// 'Bus' interface with parameterized number of client modports
interface intf_t #(num_clients = 0);
  bit [num_clients - 1:0] req;

  modport client_mp(output req);
endinterface

// A generic 'client' that attaches to the 'bus'
module client_m(interface client_ifc);
  // ... code will drive 'client_ifc.client_req'
endmodule

// The 'bus' system with 'N' clients
module bus #(N = 0);
  intf_t #(.num_clients(N)) intf();

  for (genvar j = 0; j < N; j++) begin: clients
    client_m client(.client_ifc(intf.mps[j].client_mp));
  end
endmodule

module top;
  bus bus();
endmodule
