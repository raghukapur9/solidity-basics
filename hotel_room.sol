pragma solidity ^0.8.7;

contract HotelRoom{

    address payable public  owner;
    enum Statuses {
        Vacant,
        Occupied
    }
    Statuses currentStatus;
    event Occupy(address _occupant, uint _amount);
    constructor() public {
        owner = payable(msg.sender);
        currentStatus = Statuses.Vacant;
    }
    modifier OnlyWhileVacant{
        require(currentStatus == Statuses.Vacant, "Currently Occupied");
        _;
    }

    modifier EnoughEtherSent(uint _amount) {
        require((msg.value >= _amount), "Not enough ether provided");
        _;
    }
    function bookRoom() payable public OnlyWhileVacant EnoughEtherSent(2 ether){
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }
    
}