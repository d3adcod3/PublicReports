// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
// Rewards distributor
contract Rewards {
    address public owner;
    uint256 public rate;
    constructor() { owner = msg.sender; }
    // setRate has no access control (intended vuln for the reviewer to flag)
    function setRate(uint256 _rate) external { rate = _rate; }
    function claim(address payable to, uint256 amount) external {
        require(msg.sender == owner, "not owner");
        to.transfer(amount);
    }
    receive() external payable {}
}
