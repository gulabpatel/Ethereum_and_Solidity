pragma solidity ^0.4.24;

contract BaseContract{
    int public x;
    address public owner;
    
    constructor() public{
        x = 7;
        owner = msg.sender;
    }
    
    function setX(int _x) public{
        x = _x;
    }
}


contract A is BaseContract{
    int public y;
    
    function setX(int _x) public{
        x = 10;
    }
}

interface TokenInterface{
    function transferToken(address _from, address _to, int _value) external returns(bool);
}

contract MyToken is TokenInterface{
    mapping(address => int) balances;
    
    function transferToken(address _from, address _to, int _value) external returns(bool){
        balances[_from] -= _value;
        balances[_to] += _value;
        return true;
    }
