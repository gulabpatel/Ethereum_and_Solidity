pragma solidity ^0.4.24;
contract Property{
   
    uint public price;
    string  public location;
    address public owner;
    
    //automatically executed when creating/deploying the contract
    //executes only once
    //there is only one constructor
    //it initializes the state variables
    
    //function Property(uint _price, string _location){  //old way, obsolete
    constructor(uint _price, string _location) public{
        price = _price;
        location = _location;
        owner = msg.sender; //owner is the address of the account that deploys the contract
    }
    
    //setter, creates a transaction and costs gas
    function setPrice(uint _price) public {
        price = _price;
    }
    
    function setLocation(string _location) public{
        location = _location;
    }
    
}

