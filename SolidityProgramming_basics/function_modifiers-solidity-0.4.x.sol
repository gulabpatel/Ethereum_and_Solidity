pragma solidity ^0.4.24;
contract Property{
    
    uint public price = 90000;
    string  public location = "Hamburg" ;
    address public owner;

    
    //contract constructor
    constructor() public{
       owner = msg.sender; //initialize the owner with the address that deploys the contract
    }
    
    
    //function modifier
    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }
    
    //function modifier
    modifier priceGreaterThan10000{
        require(price > 10000);
        _;
    }
    
    
    function get_balance() view public onlyOwner returns (uint){
       return address(this).balance;
    }
    
    //creates a transaction and costs gas
    function setPrice(uint _price) public onlyOwner priceGreaterThan10000{
        require(_price > price);
        price = _price;
    }
    
    function setLocation(string _location) public onlyOwner{
        location = _location;
    }
    
}


