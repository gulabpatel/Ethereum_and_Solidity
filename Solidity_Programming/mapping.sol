pragma solidity ^0.4.24;
    
    
    contract Auction{
        mapping(address => uint) public bids;
        
        function bid() payable public {
            bids[msg.sender] = msg.value;
        }
    }
