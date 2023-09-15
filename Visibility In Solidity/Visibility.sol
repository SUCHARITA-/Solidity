/**
* @Author : Sucharita Mondal
* @Description : Visibility in Solidity
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/**
* visibility
* public - any contract and account can call
* private - only inside the contract that defines the function
* internal- only inside contract that inherits an internal function
* external - only other contracts and accounts can call
**/

// State variables can be declared as public, private, or internal but not external.

/**
-------------------
| A               |
| private pri()   |  
| internal inter()| <------------- C
| public pub()    | pub() and ext()
| external ext    |
-------------------

-------------------
| B is A          | 
| internal inter()| <------------- C
| public pub()    | pub() and ext()
-------------------
 */

 contract VisibilityBase {
    uint private x = 0;
    uint internal y = 1;
    uint public z = 2;

    function privateFunc() private pure returns (uint) {
        return 0;
    }

    function internalFunc() internal pure returns (uint) {
        return 100;
    }

    function publicFunc() public pure returns (uint) {
        return 200;
    }

    function externalFunc() external pure returns (uint) {
        return 300;
    }

    function examples() external view {
        x + y + z;
        privateFunc();
        internalFunc();
        publicFunc();

        // externalFunc() cannot be called generally but heck to call is as below
        //this.externalFunc(); // this is GAS INEFFICIENT way - DO NOT USE IT
    }
}

contract VisibilityChild is VisibilityBase {
    function examples2() external view {
        y + z;

        internalFunc();
        publicFunc();
    }
}