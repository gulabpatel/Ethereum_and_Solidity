pragma solidity ^0.4.24;

contract Auction{
    //mapping state variable
    //keys of type address and value of type uint
    //by default all values associated to all ethereum addresses are zero
    mapping(address => uint) public bids;
    
    //payble function that change the key of the address that calls the function
    //with the value that address sent to the contract
    function bid() public payable{
        bids[msg.sender] = msg.value;
    }
    
}
