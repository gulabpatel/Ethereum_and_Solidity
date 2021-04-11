pragma solidity ^0.4.24;


contract Property{
    string public location = 'London';
    uint[] public prices;
    
    function add_price(uint _price) public{
        prices.push(_price);
    }
    
    function get_length() view public returns(uint){
        return prices.length;
    }
    
    function get_element(uint index) view public returns(uint){
        if (index < prices.length){
             return prices[index];
        }
    }
    
    
    function delete_element(uint index) public returns(bool){
        if(index >= prices.length)
            return false;
            
    for (uint i = index; i< prices.length - 1; i++){
        prices[i] = prices[i+1];
    }        
    
    prices.length--;
    return true;
    
    }
    
    function f() public{
        uint[] storage myArray = prices; //this is recommended
    }
 
 
 
    
}
