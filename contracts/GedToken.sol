// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract GedToken {
	//Constructor
	//Set the total number of tokens
	//Read the total number of tokens
	uint256 public totalSupply = 1000000;
	
	function GedTokens () public {
		totalSupply = 1000000; //1 mil supply
	}
}
