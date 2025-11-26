// IEEE Std 1800-2012
//   8. Classes
//    8.23 Class scope resolution operator ::

// ! TYPE: POSITIVE

module top;

  class StringList;
    class Node; // Nested class for a node in a linked list.
      string name;
      Node link;
    endclass
  endclass

  class StringTree;
    class Node; // Nested class for a node in a binary tree.
      string name;
      Node left, right;
    endclass
  endclass

  // 'StringList::Node' is different from 'StringTree::Node'
  StringList::Node sln;
  StringTree::Node stn;

endmodule
