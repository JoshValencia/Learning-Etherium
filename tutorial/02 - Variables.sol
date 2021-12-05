// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.0;

contract Property {

    //Variable Types
    /**
        1. State Variable - expensive to use cost gas
        2. Local Variable - no gas
    **/

    // State Variable
    int public price;
    string constant public location = "London";

    // Local Variable
    function f1() public pure returns(int){
        int x = 5;
        x = x * 2;
        return x;
    }

}