var SimpleStorage = artifacts.require("./SimpleStorage.sol");
var CollatPool = artifacts.require("./CollatPool.sol");

module.exports = function(deployer) {
  deployer.deploy(SimpleStorage);
  deployer.deploy(CollatPool);
};
