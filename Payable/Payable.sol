/**
* @Author : Sucharita Mondal
* @Description : Use of Payable  keyboard
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

//Declare function as payable to enable the function to receive ETH.
//Declare an address as payable to enable the address to send ETH.

contract Payable {
    address payable public  owner;
    
    constructor() {
        owner = payable(msg.sender); // msg.sender returns address and need to cast it to payable, so that be stored
    }
    function deposit() external payable {}

    function getBalanace() external view returns (uint) {
        return address(this).balance;
    }

}