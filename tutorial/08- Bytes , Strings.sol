//SPDX-License-Identifier: GPL-3.0
 
pragma solidity 0.8.0;

contract BytesAndStrings{
    bytes public b1 = 'abc'; //hexadecimal - hex ascii code
    string public s1 = 'abc';// utf-8 encoded

    function addElement() public{
        b1.push('x'); 
        // s1.push('x'); string type does not accept pushed values
    }

    function getElement(uint i) public view returns(bytes1){
        return b1[i]; //bytes index access is possible while string is not
    }

    function getLength() public view returns(uint) {
        return b1.length; //bytes is like an array of character while strings is not;
    }
}