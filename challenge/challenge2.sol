//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract CryptosToken{
    string public name;
    address public owner;
    uint supply;

    constructor(){
        name = "Cryptos";
        owner = msg.sender;
        supply = 10;
    }

    function getSupply() public view returns(uint){
        return supply;
    }

    function setSupply(uint newSupply) public{
        supply = newSupply;
    }
}