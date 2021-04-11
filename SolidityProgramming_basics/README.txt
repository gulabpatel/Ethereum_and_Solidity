Starting with Solidity 0.5.0 there are some minor changes that are not backward compatible with older versions (0.4.x).

In the resource directory that contains all smart contracts developed in the course, you'll find 2 versions (.sol files): one that can be compiled by solidity 0.4.x 
and another that should be compiled by solidity versions greater than 0.5.0
If you use the Remix IDE, you can choose the compiler version in COMPILE TAB 

Exemple:
lottery-solidity-0.4.29.sol  -> should be compiled by solidity 0.4.29
lottery-solidity-0.5.0.sol  -> should be compiled by solidity 0.5.0 or greater



Important changes in Solidity 0.5.0:
- The address data type was split into address and address payable, where only address payable provides the transfer function. If you want to transfer ether to an address, that address must be declared payble: 

address payble public my_address; //in solidity 0.5.x
address public my_address; 	//in solidity 0.4.x


- fallback functions must be declared external, explicitly


- keccak256() function accepts only a single bytes argument. We use the abi.encodePacked() function to get the bytes argument from more values
       

keccak256(abi.encodePacked(block.difficulty, block.timestamp, players.length));
keccak256(block.difficulty, block.timestamp, players.length);
