pragma solidity ^0.8.7;

contract mappings{
    // mapping -> key, value store,
    // in solidity if key doesn't exist it gives back empty value
    mapping(uint => string) public names;
    uint public mappingCount = 1;

    function addName(string memory _name) public{
        names[mappingCount] = _name;
        mappingCount ++;
    }

}