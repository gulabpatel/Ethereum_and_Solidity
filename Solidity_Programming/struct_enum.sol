pragma solidity ^0.4.24;

contract Auction{
    mapping(address => uint) public bids;
    
    // struct is used to create mixed type data type
    //enums are used to create user-defined types
    // enum is explicitly convertible to and from integer
    
    struct Car{
        string description;
        uint value;
        uint built_year;
    }
    
    Car public private_car;
    mapping(address => Car) public cars;
    
    enum State { Running, Stopped, Inactive}
    
    State public status = State.Running;
    
    
    constructor(string _description, uint _value, uint _build_year) public{
        private_car.description = _description;
        private_car.value = _value;
        private_car.built_year = _build_year;
        
        cars[msg.sender] = private_car;
        
    }
    
    function modify_car(string _description, uint _value, uint _built_year) public returns(bool){
        if(status==State.Running){
        Car memory newCar = Car({
            description : _description,
            value : _value,
            built_year : _built_year
        });
        private_car = newCar;
        return true;
        }
        else{
            return false;
        }
       }
    
    function bid() payable public {
        bids[msg.sender] = msg.value;
    }
}
