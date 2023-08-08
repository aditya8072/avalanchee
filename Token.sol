// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Token {

    // public variables here
    string public tokenName = "Aditya";
    string public abbrv = "Adi";
    uint public totalSupply = 0;

    // mapping variable here
    mapping(address => uint) public balances;
    address public owner;

    // mint function
    function mint(address _address, uint _value) public  {
        totalSupply += _value;
        balances[_address] += _value;
    }

    // burn function
    function burn(address _address, uint _value) public {
        require(balances[_address] >= _value, "Insufficient balance");
        balances[_address] -= _value;
        totalSupply -= _value;
    }

    // transfer function
    function transfer(address _to, uint _value) public {
        require(balances[msg.sender] >= _value, "Insufficient balance");
        balances[msg.sender] -= _value;
        balances[_to] += _value;
    }
}
