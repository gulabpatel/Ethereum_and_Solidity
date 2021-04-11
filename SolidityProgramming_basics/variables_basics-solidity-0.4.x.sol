pragma solidity ^0.4.24;

contract Property{
  string public location = "Paris";
  int public price; //by default is initialized with 0
   
 // location = "London"; //this is not permitted in solidity
 
 //setter function, sets a state variable
 function setProperty(string _location) public{ //_location is local and saved in 
                                                //memory
     location = _location;
  
     int a; //local variable, saved on the stack
     
     int[] x; //dynamic array, this is saved in storage 
     
 }
}
