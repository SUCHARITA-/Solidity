/**
* @Author : Sucharita Mondal
* @Description : Building a simple functionality to create Account, deposit balance and withdrawl
* @Reference : https://www.blocktrain.info/course/complete-solidity-course/MC0oynXvTmDDPgzyykCs
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract SmartBank {

    struct Account {
        address owner;
        uint256 balance;
        uint256 accountCreatedTime;
    }
    mapping(address => Account) public UserAccount;

    // modifier
    modifier checkMinimumBalance (){
        require(msg.value >= 1 ether, " You don't have sufficient balance to proceed");
        _;
    }

    //account creation
    function createAccount() public payable {
        UserAccount[msg.sender].owner = msg.sender;
        UserAccount[msg.sender].balance = msg.value;
        UserAccount[msg.sender].accountCreatedTime = block.timestamp;
    }

    // deposit
    function getDeposit() public payable {
         UserAccount[msg.sender].balance += msg.value;
    }

    // withdrawl
    function getWithdrawl() public payable checkMinimumBalance {
        // address.transfer(amount to transfer)
        payable(msg.sender).transfer(UserAccount[msg.sender].balance);
        UserAccount[msg.sender].balance = 0; // clear the balance
    }
}