/**
* @Author : Sucharita Mondal
* @Description : View and Pure function example
* View function : It's readonly functions, can read from Blockchain/state variable
* Pure function : Neither read nor write in Blockchain
*/

//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.9;

contract ViewAndPure {
    uint public num;

    function viewFunction() external view returns (uint) {
        return num;
    }

    function pureFunction() external pure returns (uint) {
        return 1;
    }

    function add(uint x) external view returns (uint) {
        return num + x;
    }

    function product(uint x, uint y) external view returns (uint) {
        return x * y;
    }
}