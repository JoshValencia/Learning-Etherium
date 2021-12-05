// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.0;

contract Property {

    int public price;
    string location = "London";

    function setPrice(int _price) public{
        price = _price;
    }

    function getPrice() public view returns(int) {
        return price;
    }

}