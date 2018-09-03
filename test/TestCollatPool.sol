pragma solidity ^0.4.24;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/CollatPool.sol";

contract TestCollatPool {

  function testItStartsAtZeroBalance() public {
    CollatPool collatPool = CollatPool(DeployedAddresses.CollatPool());
    uint balance = collatPool.checkContractBalance();
    Assert.equal(balance, 0, "It should be zero");
  }
}
