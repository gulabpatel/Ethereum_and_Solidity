pragma solidity ^0.4.24;

contract A{
    int public x = 8; 
    
    
    /*function get_x() view returns(int){
        return x;
    }*/
    
    //default, public function
    function f1() public view returns(int){
        return x;
    }
    
    //private function, can be called only within this contract
    function f2() private view returns(int){
        return x;
    }
    
    function f3() public view returns(int){
        int a;
        a = f2();
        return a;
    }
    
    //can be called within this contract and from derived contracts
    function f4() internal view returns(int){
        return x;
    }
    
    //can be called only from the outside (contracts &  apps)
    function f5() external view returns(int){
        return x;
    }
    
    function f6() public view returns(int){
        int b;
       // b = f5(); //error, f5 is an external functoin
        return b;
    }
    
}

contract B{
    A public contract_a = new A(); //contract B deplays contract A
    int public xx = contract_a.f5();
    //int public y = contract_a.f2(); //error, f2 is a private function
   // int public xxx = contract_a.f4(); //error, f4 is internal
}


contract C is A{
    int public xx = f4();
    
    A public a = new A();
    int public xxx = a.f5();
    
}
