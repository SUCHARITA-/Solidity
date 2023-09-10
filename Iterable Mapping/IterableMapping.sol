/**
* @Author : Sucharita Mondal
* @Description : Iterable Mapping
*/

//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.9;


// contract demonstrates Iterarble Mapping in Solidity

contract IterableMapping {
    mapping (address => uint) public balances;
    mapping (address => bool) public inserted;
    address[] public keys;

    function set(address _key, uint _val) external {
        balances[_key] = _val;

        if (!inserted[_key]) {
            inserted[_key] = true;
            keys.push(_key);
        }
    }

    function getSize() external view returns (uint) {
        return keys.length;
    }

    function getFirst() external view returns (uint) {
        return balances[keys[0]];
    }

    function getLast() external view returns (uint) {
        return balances[keys[keys.length - 1]];
    }
    function getValue(uint _idx) external view returns (uint) {
        return balances[keys[_idx]];
    }
}