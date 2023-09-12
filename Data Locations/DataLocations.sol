/**
* @Author : Sucharita Mondal
* @Description : Data Locations : Storage, Memory and Calldata
* Storage : When need to update dynamic data
* Memory ; When need to read data or modify data without saving it to Blockchain
* Calldata : For function inputs, it saves GAS by avoiding copies
*/

//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.9;

contract DataLocations {
    struct MyStruct {
        uint foo;
        string text;
    }
    mapping(address => MyStruct) public myStructs;

    function examples (uint[] calldata y, string calldata s) external returns (uint[] memory) {
        myStructs[msg.sender] = MyStruct({foo : 123, text : "bar"});

        MyStruct storage myStruct = myStructs[msg.sender];
        myStruct.text = "foo";

        MyStruct storage readOnly = myStructs[msg.sender];
        readOnly.foo = 457;

        _internal(y); 

        uint[] memory memArr = new uint[](3);
        memArr[0] = 234;
        return memArr;
    }

    function _internal(uint[] calldata y) private {
        uint x = y[0];
    }
}