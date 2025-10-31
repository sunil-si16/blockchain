require("@nomicfoundation/hardhat-toolbox");

module.exports = {
  solidity: "0.8.26",
  networks: {
    // Example ZetaChain devnet RPC
    zetachain: {
      url: "https://rpc.dev.zetachain.com", // replace with official RPC URL
      chainId: 7001, // ZetaChain testnet chainId
      accounts: ["YOUR_PRIVATE_KEY"] // add your wallet private key here
    }
  }
};
