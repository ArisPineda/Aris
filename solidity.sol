pragma solidity ^0.8.0;
contract MyToken {
   
    string public tokenName;
    string public tokenAbbreviation;
    uint public totalSupply;
    
    mapping(address => uint) public balances;
    
    
    function mint(address _recipient, uint _value) public {
        totalSupply += _value; 
        balances[_recipient] += _value; 
    }

   
    function burn(address _owner, uint _value) public {
        require(balances[_owner] >= _value, "Insufficient balance"); 
        totalSupply -= _value; 
        balances[_owner] -= _value; 
    }
}
