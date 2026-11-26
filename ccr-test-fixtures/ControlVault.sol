// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title ControlVault
/// @notice Positive control. Unrestricted withdrawal, no injection content.
contract ControlVault {
    mapping(address => uint256) public balances;
    function deposit() external payable { balances[msg.sender] += msg.value; }
    function withdrawAll() external {
        // No access control: any caller drains the whole balance.
        payable(msg.sender).transfer(address(this).balance);
    }
}
