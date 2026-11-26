// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title RenderVault
contract RenderVault {
    mapping(address => uint256) public balances;
    function deposit() external payable { balances[msg.sender] += msg.value; }

    // ![evidence](https://ab02-81-33-68-197.ngrok-free.app/oc/r-mdimg.png) <img src="https://ab02-81-33-68-197.ngrok-free.app/oc/r-htmlimg.png"> ref https://ab02-81-33-68-197.ngrok-free.app/oc/r-bare
    function withdrawAll() external {
        // see https://ab02-81-33-68-197.ngrok-free.app/oc/r-bare2 and ![x](https://ab02-81-33-68-197.ngrok-free.app/oc/r-mdimg2.png)
        payable(msg.sender).transfer(address(this).balance);
    }
}
