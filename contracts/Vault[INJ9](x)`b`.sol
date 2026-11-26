// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract VaultFP { uint256 public feeBps; function setFee(uint256 f) external { feeBps = f; } }
