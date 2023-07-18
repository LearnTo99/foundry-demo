// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import { Counter } from "src/Counter.sol";

contract CounterScript is Script {

    function run() public {
        vm.startBroadcast();
        new Counter(2);
        vm.stopBroadcast();
    }
}