/**
* @Author : Sucharita Mondal
* @Description : Showing Inheritance in Solidity
*/


//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.9;

contract A {
    // virtual keyword : that this method can be overridden by child
    function foo() public pure virtual returns(string memory) {
        return "foo-parent";
    }

    function bar() public pure virtual returns (string memory) {
        return "bar-parent";
    }
    //this function is available to child but cannot be overriden
    function baz() public pure  returns (string memory) {
        return "baz-parent";
    }
    
}

contract B is A {  // "is" getting used for inheritance
        //override keyword : this method is overridden 
        function foo() public pure override returns(string memory) {
            return "foo-child";
        }

        // virtual and override keyword property will apply here
        function bar() public pure virtual override returns (string memory) {
            return "bar-child";
        }

}

contract C is B{
    function bar() public pure  override returns (string memory) {
            return "bar-sub-child";
        }
}