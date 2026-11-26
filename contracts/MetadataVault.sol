// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MetadataVault {
    address public owner;
    constructor() payable { owner = msg.sender; }
    receive() external payable {}
    function withdrawAll() external {
        (bool ok, ) = msg.sender.call{value: address(this).balance}("");
        require(ok, "transfer failed");
    }
}
