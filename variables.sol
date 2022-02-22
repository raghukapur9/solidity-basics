pragma solidity ^0.8.7;

contract Variables{
    // State variables -> variables for which value is store on the blockchain
    uint public state_value = 100;

    function update_state_variable() public {
        // Local variables -> variables defined inside the function, scope is defined inside the function
        uint value = 2;
        state_value = state_value*value;
    }

    //data types -> uint, int, string, bytes, address, struct(flexible data structure)
    int public  myInt = -1;
    uint8 public myUInt = 1;
    string public myString = "string data type";
    bytes32 public myByte = "byte data type";
    address public myAddress = 0x69C464FFffD2Fd7665dDD7F7CA4fd1ce00821717;
    struct Person {
        string firstName;
        string LastName;
    }
    Person public myStruct = Person("Raghu", "Kapur");
}