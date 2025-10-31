async function main() {
  const [deployer] = await ethers.getSigners();
  console.log("Deploying with account:", deployer.address);

  const UniversalApp = await ethers.getContractFactory("UniversalApp");
  const app = await UniversalApp.deploy();

  await app.deployed();

  console.log("UniversalApp deployed to:", app.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
