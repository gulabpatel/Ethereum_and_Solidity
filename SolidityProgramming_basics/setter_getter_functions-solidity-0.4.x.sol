pragma solidity ^0.4.24;

contract Property{
    //state variables
    uint public value;  //public, a getter is automatically created
    string private location = "London"; //private, we must create a getter
    
    
    constructor(uint _value, string _location) public{
        value = _value;
        location = _location;
    }
    
    
     //setter, modifies a state variable
    function setLocation(string _location) public{
        location = _location;
    }
    
    
    //setter, modifies a state variable
    function setValue(uint _value) public{
        value = _value;
    }
    
    //getter, returns a value of a state variable
    function getLocation() public view returns(string){
        return location;
    }
}
