pragma solidity ^0.4.24;

contract BytesFixedArrays{
    bytes2 public x; //fixed-size array of 2 octets
    bytes3 public y; //fixed-size array of 3 bytes
    
    function setX_Y() public{
        //the elements of x are the hexadecimal ASCII codes of 'a' and 'b' 
        x = 'ab'; 
        //3 in converted to hexadecimal (0x03) and y is 0x000003
        y = 3;
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
    //function setx(){
     //   x[0] = 'd';
//    }
    
    
}
