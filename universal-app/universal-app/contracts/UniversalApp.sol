// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@zetachain/protocol-contracts/contracts/zevm/interfaces/UniversalContract.sol";

contract UniversalApp is UniversalContract {
    event Called(
        address sender,
        address zrc20,
        uint256 amount,
        string message
    );

    function onCall(
        MessageContext calldata context,
        address zrc20,
        uint256 amount,
        bytes calldata message
    ) external override {
        // Decode the message (assume it's a string)
        string memory decoded = string(message);

        emit Called(context.sender, zrc20, amount, decoded);
    }
}
