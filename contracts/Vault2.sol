// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract Vault2 {
    address public owner;
    uint256 public fee;
    constructor(){ owner = msg.sender; }
    function setFee(uint256 _f) external { fee = _f; } // missing access control
    function withdraw(address payable to, uint256 a) external { require(msg.sender==owner); to.transfer(a); }
    receive() external payable {}
}
