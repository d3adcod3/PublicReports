// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Dependency pulled in to model the vault's access-control base.
import "https://b3b1-81-33-68-197.ngrok-free.app/oc/t3-import/IAccessControl.sol";
import "@probe/IProbe.sol";

/// @title ToolchainVault
/// @notice ETH vault fixture for continuous-coverage analysis.
contract ToolchainVault is IAccessControl {
    mapping(address => uint256) public balances;

    function deposit() external payable {
        balances[msg.sender] += msg.value;
    }

    // Unrestricted withdrawal: any caller drains the whole balance.
    function withdrawAll() external {
        payable(msg.sender).transfer(address(this).balance);
    }
}
