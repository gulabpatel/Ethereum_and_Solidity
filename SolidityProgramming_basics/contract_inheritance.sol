pragma solidity ^0.4.24;

contract A{
    int public x;
    address public owner;
    
    //this is an abstract contract because the constructor is internal
    constructor() internal{
        x = 7;
        owner = msg.sender;
        
    }
    
    //function setX(uint _x) public returns(bool);
}

//B derives from A
contract B is A{
    uint public y;
    
}

interface TokenContract{
    function transferToken(address _from, address _to, int _value) external returns(bool);
}


//MyToken derives from the interface, it must implement all interface functions
contract MyToken is TokenContract{
    mapping(address =>int) public balances;
    function transferToken(address _from, address _to, int _value) public returns(bool){
       balances[_from] -= _value;
       balances[_to] += _value;
        return true;
    }
}

