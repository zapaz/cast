// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {DeployLite} from "@forge-deploy-lite/DeployLite.s.sol";
import {Hi} from "../src/Hi.sol";

contract DeployHi is DeployLite {
    function deployHi() public returns (address hi) {
        vm.broadcast();
        hi = address(new Hi());
    }

    function run() public virtual {
        deploy("Hi");
    }
}
