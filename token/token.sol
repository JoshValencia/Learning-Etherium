//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.5.0 <0.9.0;

interface ERC20Interface {
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
    // function allowance(address owner, address spender) external view returns (uint256);
    // function approve(address spender, uint256 amount) external returns (bool);
    // function transferFrom(
    //     address sender,
    //     address recipient,
    //     uint256 amount
    // ) external returns (bool);
    event Transfer(address indexed from, address indexed to, uint256 value);
    // event Approval(address indexed owner, address indexed spender, uint256 value);
}

contract Cryptos is ERC20Interface{
    string public name = "Cryptos";
    string public symbol = "CRYPT";
    uint public decimal = 0;
    uint public override totalSupply;

    address public founder;
    mapping(address => uint) public balances;

    constructor(){
        totalSupply = 1000000;
        founder = msg.sender;
        balances[msg.sender] = totalSupply;
    }

    function balanceOf(address account) public view override returns (uint256){
        return balances[account];
    }

    function transfer(address recipient, uint256 amount) public override returns (bool){
        require(balances[msg.sender] >= amount, "Balance is too low!");
        balances[recipient] += amount;
        balances[msg.sender] -= amount;
        emit Transfer(msg.sender, recipient, amount);

        return true;
    }
}