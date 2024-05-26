// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    string public name;
    string public symbol;
    uint256 public totalSupply;

    mapping(address => uint256) public balances;

    constructor(string memory _name, string memory _symbol, uint256 _initialSupply) {
        name = _name;
        symbol = _symbol;
        totalSupply = _initialSupply;
        balances[msg.sender] = _initialSupply;
    }

    function mint(address _receiver, uint256 _value) public {
        totalSupply += _value;
        balances[_receiver] += _value;
    }

    function burn(address _owner, uint256 _value) public {
        require(balances[_owner] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balances[_owner] -= _value;
    }
}