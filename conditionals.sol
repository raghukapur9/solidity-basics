pragma solidity ^0.8.7;

contract Conditionals{
    function isEven(uint _number) public view returns(bool){
        if(_number % 2 == 0){
            return true;
        } 
        else {
            return false;
        }
    }
}