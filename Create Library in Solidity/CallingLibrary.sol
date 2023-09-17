/**
* @Author : Sucharita Mondal
* @Description : Using Library that we have created
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
import "./Library.sol";

contract CallingLibrary {
    using MyMathLibrary for uint;
    function doMath(uint a, uint b) public pure returns (uint) {
        return a.add(b); // use the library's add function
    }
}