/**
* @Author : Sucharita Mondal
* @Description : Order of calling Parent Constructor
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

// 2 ways to call parent constructors
// Order of initialization

contract S {
    string public name;
    constructor(string memory _name) {
        name = _name;
    }
}

contract T {
    string public text;
    constructor(string memory _text) {
        text = _text;
    }
}

//this way can be used if you know what constant/value will be there to parent constructor
contract U is S("s"), T("t") { 

}

//this way can be used for adding dynamic value to parent constructor
contract V is S,T {
    constructor(string memory _name, string memory _text) S(_name) T(_text) {

    }
}

//The  order of calling parent constructor/execution goes by the order in which they are getting inherited
// 1. S
// 2. T
// 3. V0
contract V0 is S,T { // order of inheritance
    constructor(string memory _name, string memory _text) S(_name) T(_text) {

    }
}


//The  order of calling parent constructor/execution goes by the order in which they are getting inherited
// 1. S
// 2. T
// 3. V1
contract V1 is S("s"),T { // order of inheritance
    constructor(string memory _text) T(_text) {

    }
}

//The  order of calling parent constructor/execution goes by the order in which they are getting inherited
// 1. S
// 2. T
// 3. V2
contract V2 is S , T("t") { // order of inheritance
    constructor(string memory _name) S(_name) {

    }
}


//The  order of calling parent constructor/execution goes by the order in which they are getting inherited
// 1. T
// 2. S
// 3. V3
contract V3 is T , S { // order of inheritance
    constructor(string memory _text, string memory _name) T(_text) S(_name) {

    }
}

