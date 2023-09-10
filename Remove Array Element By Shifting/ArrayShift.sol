/**
* @Author : Sucharita Mondal
* @Description : Ownable Contract
*/


//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.9;

contract ArrayShift {
    uint[] public arr ; // dynamic array

    function example() public {
        arr = [1,3,4,5,54];
        delete arr[1]; //[1,0,4,5,54] : On delete operation, element value is replace by default value of uint i.e. 0
    }
    // this remove() is not GAS effective
    function remove(uint _index) public {
        require(_index < arr.length, "index out of bound");
        for (uint i = _index; i < arr.length - 1; i++){
            arr[i] = arr[i+1];
        }
        arr.pop();
    }

    //test the remove() method
    function test() external {
        arr  = [1,2,3,4];
        remove(2);
        assert(arr[0] == 1);
        assert(arr[1] == 3);
        assert(arr[2] == 4);

        arr = [1];
        remove(0);
        assert(arr.length == 0);
    }
}
