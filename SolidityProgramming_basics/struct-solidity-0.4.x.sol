pragma solidity ^0.4.24;

contract Autos{
   
   //introducing a new variable type
    struct Car{
        string brand;
        uint built_year;
        uint value;
    }
    
    //state varible of type Car
    Car public private_car;
    
    //mapping, keys are of type addresses and values of type car
    mapping (address => Car) public cars;
    
    
    enum State {Running, Stopped, Inactive} //!no semicolon here
    State public status = State.Running;
    
    //initialize the struct state variable
    constructor(string _brand, uint _built_year, uint _value){
        private_car.brand = _brand;
        private_car.built_year = _built_year;
        private_car.value = _value;
        
        cars[msg.sender] = private_car;
    }
    
    //modifies the struct state variables
    function modify_car(string _brand, uint _built_year, uint _value) public{
       
       //this is an in memory variable, is not saved in storage
        Car memory newCar = Car({
            brand: _brand,
            built_year: _built_year,
            value: _value
        });
        
        private_car = newCar;
    }
    
    
}
