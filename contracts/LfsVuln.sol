// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract LfsVuln { address public owner; uint256 public feeBps; constructor(){owner=msg.sender;} function setFee(uint256 f) external { feeBps=f; } }
