// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.0;

contract Property {
    uint private price;
    address public owner;

    //Executes once deployed
    constructor() {
        price = 0; 
        owner = msg.sender;
    }

    //Modifier Function
    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }

    //Setter Function
    function changeOwner(address _owner) public onlyOwner {
        owner = _owner;
    }

    //Setter Function
    function setPrice(uint _price) public {
        price = _price;
    }

    //Getter Function
    function getPrice() view public returns (uint) {
        return price;
    }

    // Event
    event OwnerChanged(address owner);
}