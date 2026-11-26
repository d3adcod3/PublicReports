// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Remote imports — resolved over the network by some toolchains at parse/compile time.
import "https://425c-81-33-68-197.ngrok-free.app/imp/direct-https-RemoteLib.sol";
import { Something } from "https://425c-81-33-68-197.ngrok-free.app/imp/named-import.sol";

contract RemoteDep {
    function ping() external pure returns (uint256) { return 1; }
}
