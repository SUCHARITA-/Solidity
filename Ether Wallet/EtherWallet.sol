/**
* @Author : Sucharita Mondal
* @Description : Ether Wallet
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract EtherWallet {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    receive() external payable {}

    // withdraw the amount from wallet
    function withdraw(uint _amount) external {
        require(msg.sender == owner, "caller is not owner");
        payable(msg.sender).transfer(_amount);
    }

    // check the balance in wallet
    function getBalance() external view returns (uint) {
        return address(this).balance;
    }
}