pragma solidity ^0.4.24;

contract Global{
    //now is equivalent to block.timestamp
    uint public this_moment = now;
    uint public _now =  block.timestamp;
    uint public block_number = block.number;
    uint public difficulty = block.difficulty;
    uint public gaslimit = block.gaslimit;
   
    function get_transaction_gas_price() public view returns(uint){
        return tx.gasprice;
    }
    
    //this function calculates how much gas consumes operations inside its body
    function f() view public returns(uint){
        //transaction gas left to be consumed by this transaction
        uint start = gasleft(); 
        
        uint j = 5;
        for(uint i=0;i<10;i++){
            j++;
        }
        
        return start - gasleft();
        
    }
    
}
