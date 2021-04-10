pragma solidity ^0.4.24;

contract Property{
    
    uint public price;
    string public location;
    address public owner;
    
    
    //in older version, we define the constructor in the following way
    
    //function Property(uint _price, string _location)
    constructor(uint _price, string _location) public{
        price = _price;
        location = _location;
        owner = msg.sender;
    }
    
    
    //creates a transaction and costs
    
    function setPrice(uint _price) public{
        price = _price;
    }
    
    function setLocation(string _location) public{
        location = _location;
    }
}
