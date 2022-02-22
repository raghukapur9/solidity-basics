pragma solidity ^0.8.7;

contract Arrays{
    // Array -> stores data in sequence, 0 based index
    uint[] public myArray = [1,2,3,4,5];
    string[] public stringArray = ["Hello", "World"];
    string[] public emptyArray;

    function addValue(string memory _value) public {
        emptyArray.push(_value);
    }

    function getArrayLength() public view returns(uint){
        return emptyArray.length;
    }
}