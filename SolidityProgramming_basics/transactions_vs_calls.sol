pragma solidity ^0.4.24;
contract Property{
   
    uint price;
    string  public location = 'London';
    
    //creates a transaction and costs gas
    //takes time, must be confirmed (mined)
    function setPrice(uint _price) public {
        price = _price;
    }
    
    //this function creates a call and it's free
    //doesn't take time
    function getPrice() public view returns (uint){
        return price;
    }
    
}

