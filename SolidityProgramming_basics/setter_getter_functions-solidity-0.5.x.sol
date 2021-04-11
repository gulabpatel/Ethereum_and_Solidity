pragma solidity ^0.5.2;

contract Property{
    //state variables
    uint public value;  //public, a getter is automatically created
    string private location = "London"; //private, we must create a getter
    
    //in solidity 0.5.x memory keyword is mandatory for string arguments
    constructor(uint _value, string memory _location) public{
        value = _value;
        location = _location;
    }
    
    
    //setter, modifies a state variable
    //in solidity 0.5.x memory keyword is mandatory for string arguments
    function setLocation(string memory _location) public{
        location = _location;
    }
    
    
    //setter, modifies a state variable
    function setValue(uint _value) public{
        value = _value;
    }
    
    //getter, returns a value of a state variable
    function getLocation() public view returns(string memory){
        return location;
    }
}
