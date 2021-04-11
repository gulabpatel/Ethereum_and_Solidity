pragma solidity ^0.4.18;
contract C{
    
    //dynamic array
    uint[] public myArray = [1, 2, 3, 4];
    
    //delete the element from index i, the slot remains empty
    //this is not efficient, the other elements must be moved to the left
    function delete_from_array(uint i) public{
        delete myArray[i];
    }
    
    //add an element to the dynamic array
    function add(uint item) public{
        myArray.push(item);
    }
    
    function optimized_delete(uint index) public {
        if (index >= myArray.length) return;

        for(uint i=index;i<myArray.length-1;i++){
            myArray[i] = myArray[i+1];
        }
        myArray.length--;
    }
}
