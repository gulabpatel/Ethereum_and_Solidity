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
    
}
