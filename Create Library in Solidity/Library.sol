/**
* @Author : Sucharita Mondal
* @Description : Create Library in Solidity
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

library MyMathLibrary {
    function add(uint a, uint b) internal pure returns (uint){
        return a + b;
    }
}