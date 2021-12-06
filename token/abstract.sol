//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.5.0 <0.9.0;

//Abstract Contract can't be deployed to the blockchain but can be
//derived by other contracts
// abstract contract BaseContract{
//     int public x;
//     address public owner;

//     constructor(){
//         x= 5;
//         owner = msg.sender;
//     }

//     function setX(int _x) public virtual;

// }

interface BaseContract{
    // int public x;
    // address public owner;

    // constructor(){
    //     x= 5;
    //     owner = msg.sender;
    // }

    function setX(int _x) external;
}

contract A is BaseContract{
    int public x;
    int public y = 3;

    function setX(int _x) public override{
        x = _x;
    }
}