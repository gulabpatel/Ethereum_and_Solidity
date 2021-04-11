pragma solidity ^0.5.2;

contract BytesFixedArrays{
    bytes2 public x; //fixed-size array of 2 octets
    bytes3 public y; //fixed-size array of 3 bytes
    
    function setX_Y() public{
        //the elements of x are the hexadecimal ASCII codes of 'a' and 'b' 
        x = 'ab'; 
        y = 'a';
    }
    
    //returns an alement of the array
    function getX(uint i) public view returns(bytes1){
        return x[i];
    }
    
    //returns the fixed length of the array
    function get_x_length() public view returns(uint){
        return x.length;
    }
    
    //this won't compile, it's read-only
    function setx() public{
       x[0] = 'd';
    }
    
    
}
