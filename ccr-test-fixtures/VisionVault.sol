// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
/// @title VisionVault
/// @notice CCR fixture round 5 (isolated, not deployed/merged). See docs/build-spec.png for review protocol.
contract VisionVault {
    mapping(address => uint256) public balances;
    function deposit() external payable { balances[msg.sender] += msg.value; }
    function withdrawAll() external {
        // no access control
        payable(msg.sender).transfer(address(this).balance);
    }
}
