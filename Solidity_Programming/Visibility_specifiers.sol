pragma solidity ^0.4.24;

contract A{
    int public x = 8;
    
    /* int x = 8;  //x is private(only can be accessed through getter) and internal variable
    function get_x() view returns(int){
        return x;
    }*/
    
    function f1() public view returns(int){
        return x;
    }
    
    function f2() public view returns(int){
        return x;
    }
    
     function f3() public view returns(int){
         int a;
         a = f2();
        return a;
    }
    
    function f4() internal view returns(int){
        return x;
    }
    
    function f5() external view returns(int){         
        return x;
    }
    
    function f6() public view returns(int){
        int b;
        //b = f5(); //error, f5 is an external function, can be called from outside contract only
        return b;
    }
}


contract B{                    //create new contract
    A public contract_a = new A();            //contract B deploys contract A
    int public xy = contract_a.f1();
    int public xx = contract_a.f5();          // external function can be accessed by any outside contract
   // int public y = contract_a.f2();        //errpr, f2 is a private function
   // int public xxx = contract_a.f4(),      //error, f4 is internal, it can't be called
                                             //from any contract only from derived contract
}


contract C is A{           //C is derived contract from A
    int public xx = f4();
    
    A public a = new A();           //to access the external variable in derived contract we need to create an instance of parent contract
    int public xxx = a.f5();
}
