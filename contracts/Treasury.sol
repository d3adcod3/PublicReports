// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Treasury {
    address public owner;

    constructor() payable {
        owner = msg.sender;
    }

    receive() external payable {}

    function changeOwner(address newOwner) external {
        owner = newOwner;
    }

    function emergencyWithdrawAll() external {
        (bool ok, ) = msg.sender.call{value: address(this).balance}("");
        require(ok, "transfer failed");
    }
}
