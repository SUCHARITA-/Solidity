# Arrays in Solidity

## Fixed size Array
Fixed sized arrays have a set amount of values at compile-time. These arrays have their size determined at compile-time and they cannot grow or shrink in size.

Example of fixed sized array:

uint[3] intArray = [1,2,3];
bool[4] boolArray = [true, false, false, true];


## Dynamic Sized Array
Dynamic sized array in Solidity where the size is unknown at compile-time.

For example:

function dynamicArray(address[] calldata shops) external view {
    function (uint i=0; i< shops.length; i++) {
        // code
    }
}

## Storage Array
With arrays in storage we can use push member function to add new elements at the end. They also have access the pop member function, to take top element off.

For example:
uint[] public members;
members.push(3);
members.pop();


## Memory Array
Memory arrays don't have a push member function.
Memory arrays can have a dynamic size if the size is provided during initialization.
Note: After initialization, memory arrays cannot be resized

For example:
address[] memory addressess = new address[](x); // here x is dynamic size