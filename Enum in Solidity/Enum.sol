/**
* @Author : Sucharita Mondal
* @Description : Enum example in Solidity
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Enum {
    // enum can be used when we need more status/values other than true/false (in boolean)
    enum Status {
        None,
        Pending,
        Shipped,
        Completed,
        Rejected,
        Canceled
    }

    Status public status;

    struct Order {
        address buyer;
        Status status;
    }
    Order[] public orders;

    function getStatus() view external returns (Status) {
        return status;
    }

    function setStatus(Status _status) external {
        status = _status;
    }

    function resetStatus() external {
        delete status;
    }
}