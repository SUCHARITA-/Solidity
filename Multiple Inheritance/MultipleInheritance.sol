/**
* @Author : Sucharita Mondal
* @Description : Multiple Inheritance in Solidity
*/

// Order of inheritance :- Most base to derived

    /**
        X  -----> MOST BASE (As it doesn't inherit)
       / \
      /   \
      Y   |
       \  | 
        \ |
         \|
          Z ----> MOST DERIVED (As it derives from both X and Y)
    */

    


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract X {
    function foo() public pure virtual returns (string memory) {
        return "X" ;
    }
    function x() public pure returns (string memory){
        return "X";
    }
}

contract Y is X {
    function foo() public pure virtual override returns (string memory) {
        return "Y" ;
    }
    function y() public pure returns (string memory){
        return "Y";
    }
}


contract Z is X, Y {  //most base to most derived

    function foo() public pure override(X,Y) returns (string memory) {
        return "Z" ;
    }
    function z() public pure returns (string memory){
        return "Z";
    }
}


    