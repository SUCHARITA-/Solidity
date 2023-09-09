/**
* @Author : Sucharita Mondal
* @Description : Ownable Contract
*/

//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.9;

contract Ownable {
    address public owner;
    
    //setting the owner who deploys the blockchain
    constructor() {
        owner = msg.sender;
    }

    // modifier for re-usability of similar checks
    modifier onlyOwner() {
        require(msg.sender == owner, "Current user is not owner");
        _;
    }

    // only current owner can set the new owner
    function setOwner(address _newOwner) external onlyOwner{
        require(_newOwner != address(0), "Not a valid address");
        owner = _newOwner;
    }

    // this function can only be called by owner
    function onlyOwnerCanCall() external onlyOwner{
        // code
    }

    // this function can be called by anyone
    function anyoneCanCall() external {
        // code
    }
}