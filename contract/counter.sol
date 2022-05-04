// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract counter{
	uint public num;
	address public owner;

	constructor(){
		owner = msg.sender;
		num = 0;
	}
	function add() external{
		num++;
	}
	function add10() external onlyOwner(){
		num = num + 10;
	}
	function get() external view returns(uint){
		return num;
	}
	
	modifier onlyOwner(){
		require(owner == msg.sender, "only owner");
		_;
	}
}