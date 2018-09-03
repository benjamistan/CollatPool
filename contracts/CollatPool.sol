pragma solidity ^0.4.24;

contract CollatPool {
    address public owner;
    address public cpty;
    mapping(address => uint) contributions;
    
    constructor() public {
        owner = msg.sender;
    }
    
    function makeContribution() public payable {
        contributions[msg.sender] = msg.value;
    }
    
    function checkContractBalance() public view returns (uint) {
        return this.balance;
    }
    
    function checkCptyBalance(address _cpty) public view returns (uint) {
        return contributions[_cpty];
    }
}