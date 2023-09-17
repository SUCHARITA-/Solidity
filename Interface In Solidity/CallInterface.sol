// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

//Declaring Interface
/**
* cannot have any functions implemented
* can inherit from other interfaces
* all declared functions must be external
* cannot declare a constructor
* cannot declare state variables
*/


interface ICounter {  //Interface signature I(Interface) - Counter(Name of Contract)
    function count() external view returns(uint);
    function inc() external;
}

contract CallInterface {
    uint public count;

    function examples(address _counter) external {
        ICounter(_counter).inc(); // calling inc() of Counter contract using Interface.
        count = ICounter(_counter).count();
    }
}