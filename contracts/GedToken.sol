// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract GedToken {

	string public name ="Geds Token";
	string public symbol ="GED";
	string public standard ="GED Token v1.0";
	uint256 public totalSupply;
	
	event Transfer(
		address indexed _from,
		address indexed _to,
		uint256 _value
	);

	mapping(address => uint256) public balanceOf;

	//Her afviger vi fra tutorial. han har function med GedToken navn
	//function GedToken (uint256 _initialSupply) public {
	constructor (uint256 _initialSupply) public {
		totalSupply = _initialSupply;
		balanceOf[msg.sender] = _initialSupply;	
		//allocate the initial supply - take the 1 mil and put them somewhere
	}
	
	//	function GedsToken () public returns (uint256 _initialSupply) {}

	//Transfer
	function transfer(address _to, uint256 _value) public returns (bool success) {
		// Exception if account does not have enough
		require(balanceOf[msg.sender] >= _value);
		// Transfer balance from msg.sender to address
		balanceOf[msg.sender] -= _value;
		balanceOf[_to] += _value;
		// Transfer Event
		emit Transfer(msg.sender, _to, _value);
		// Return a boolean
		return true;
	}
}
