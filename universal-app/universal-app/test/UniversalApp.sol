const { expect } = require("chai");

describe("UniversalApp", function () {
  it("Should emit an event on call", async function () {
    const [owner] = await ethers.getSigners();

    const UniversalApp = await ethers.getContractFactory("UniversalApp");
    const app = await UniversalApp.deploy();
    await app.deployed();

    const tx = await app.onCall(
      { sender: owner.address, chainID: 1 }, // fake context for testing
      owner.address,
      100,
      ethers.utils.toUtf8Bytes("Hello ZetaChain")
    );

    await expect(tx)
      .to.emit(app, "Called")
      .withArgs(owner.address, owner.address, 100, "Hello ZetaChain");
  });
});
