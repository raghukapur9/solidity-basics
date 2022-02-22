pragma solidity ^0.8.7;

contract Loop{
    uint[] public myArray = [1,2,3,4,56,7,78];
    function CountEvenNumbers() public view returns(uint){
        uint count = 0;
        for(uint i =0; i< myArray.length; i++){
            if(myArray[i] % 2 == 0){
                count ++;
            }
        }
        return count;
    }
}