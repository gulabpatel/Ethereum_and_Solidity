pragma solidity ^0.4.24;
contract Property{
    
    //state variables
    uint public price = 90000;
    string  public location = "Hamburg" ;
    address public owner;
    
    
    //contract constructor
    constructor() public{
       owner = msg.sender;
    }
    
    //returns the contract balance in wei
    function get_balance() view public returns (uint){
        return address(this).balance;
    }
    
    
    //fallback payable function
    //this function is automatically called when sending ether directly to the contract address
    //there could be only one fallback payable function, it has no arguments and no return is allowed
    function () payable public{
        location = "London";
    }
    
    function transfer_balance(address recipient_address, uint amount) public returns(bool) {
        if(msg.sender == owner){
             if (amount <= get_balance()){
                 //transfer the amount received as argument to the recipient_address
                 recipient_address.transfer(amount);
                 return true;
             }else{
                return false;
            }
        }else{
            return false;
        }
    }

    //payable function, ether are sent to the contract when calling this functions
    //there could be more payable functions
    function sendEther() payable public{
        price = 600;
    }
    
    //setter function, creates a transaction and costs gas
    function setPrice(uint _price) public {
        price = _price;
    }
    
    function setLocation(string _location) public{
        location = _location;
    }
    
}

