//SPDX-License-Identifier: Unlicense

//shows solidity compiler version
pragma solidity ^0.8.9;

// importing ERC20 token. ERC20 token used for creating Fungible token
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// creating contract and inheriting features from ERC20
contract JellyBellyToken is ERC20 {

    // constructor will be called when this contract gets deployed to Blockchain
    constructor() ERC20("MyToken", "MTK") {
        // This mints 100 tokens to msg.sender (YOU). Just like how 1 dollar is 100 ccents, a token will have  1 * (10 ** decimals) decimals
        _mint(msg.sender, 100 * (10 ** uint256(decimals())));
    }
}