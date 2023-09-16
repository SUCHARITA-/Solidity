/**
* @Author : Sucharita Mondal
* @Description : Send Ether
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// 3 ways to send ETH
// transfer - 2300 gas, reverts if transaction fails
// send - 2300 gas, returns bool
// call - all gas, returns bool and data

contract SendEther {
    constructor() payable {}
    
    receive() external payable {}

    function sendViaTransfer(address payable _to) external payable {
        _to.transfer(123);
    }

    function sendViaSend(address payable _to) external payable {
        bool send = _to.send(124);
        require(send, "send failed");
    }

    function sendViaCall(address payable _to) external payable {
        (bool success,) = _to.call{value : 123}("");
        require(success, "call failed");
    }
}

// this contract will receive Ether send by above contract
contract EthReceiver {
    event Log(uint amount, uint gas);  // logging event to check amount and gas left when this emits

    receive() external payable {
        emit Log(msg.value, gasleft()); // emitting the event
    }
}