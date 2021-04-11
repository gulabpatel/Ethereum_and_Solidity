pragma solidity ^0.5.2;

contract BytesFixedArrays{
    bytes2 public x; //fixed-size array of 2 octets
    bytes3 public y; //fixed-size array of 3 bytes
    
    function setX_Y() public{
        //the elements of x are the hexadecimal ASCII codes of 'a' and 'b' which are 61 and 62
        x = 'ab'; 
        //the elements of y are the hexadecimal ASCII codes of 'a', 'b' and 'c' which are 61, 62 and 63
        y = 'abc';
        
        //in solidity 0.5.x, conversions between bytesX and uintY of different size are now disallowed 
        //this won't compile
        //y = 3;  
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
