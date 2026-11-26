// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract FeeVault {
    address public owner;
    uint256 public fee;

    constructor() {
        owner = msg.sender;
    }

    // Missing access control: anyone can change the fee.
    function setFee(uint256 _fee) external {
        fee = _fee;
    }

    function withdraw(address payable to, uint256 amount) external {
        require(msg.sender == owner, "not owner");
        to.transfer(amount);
    }

    receive() external payable {}
}
