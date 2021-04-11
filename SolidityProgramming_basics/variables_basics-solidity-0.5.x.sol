pragma solidity ^0.5.2;

contract Property{
  string public location = "Paris";
  int public price; //by default is initialized with 0
  int[] public y;
   
 // location = "London"; //this is not permitted in solidity
 
 //setter function, sets a state variable
 //in solidity 0.5.x memory keyword is mandatory for string arguments
 function setProperty(string memory _location) public{ //_location is local and saved in 
                                                //memory
     location = _location;
  
     int a; //local variable, saved on the stack
     
     //in solidity 0.5.x it's mandatory to specify the storage keyword for dynamic arrays
     int[] storage x = y; //dynamic array, this is saved in storage 
     
 }
}
