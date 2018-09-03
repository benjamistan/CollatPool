const CollatPool = artifacts.require("./CollatPool.sol");

contract("CollatPool", accounts => {
    it("...starts with zero balance", async () => {
        const collatPoolInstance = await CollatPool.deployed(); //creates instance of contract

        const startingBalance = await collatPoolInstance.checkContractBalance.call();
        //console.log("Starting balance is", startingBalance.toNumber());
        assert.equal(startingBalance, 0, "balance not zero");
    });
});



  