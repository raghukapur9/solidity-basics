pragma solidity ^0.8.7;

contract Counter{
    // you can initialise value while defining abstract variable.
    uint count;

    constructor() public {
        count = 0;
    }
    // getter for abstract variables come in built, so you dont have to create get fuctions for abstract variables, variable should be public for it to create a getter method.
    function getCount() public view returns(uint){
        return count;
    }

    function incrementCount() public {
        count++;
    }
}