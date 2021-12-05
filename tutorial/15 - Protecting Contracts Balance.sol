//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.6.0 <0.9.0;
 
contract Deposit{

    address public owner;

    constructor(){
        owner = msg.sender;
    }

    receive() external payable{
    }

    fallback() external payable {
    }
        
    function sendEther() public payable{
        
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    function transferEther(address payable recipient, uint amount) public returns(bool){
        require(owner == msg.sender, "Transfer Failed, You are not the Owner!");
        if(amount <= getBalance()){
            recipient.transfer(amount);
            return true;
        }else{
            return false;
        }
    }
}