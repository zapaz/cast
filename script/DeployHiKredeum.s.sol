// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {DeployLite} from "@forge-deploy-lite/DeployLite.s.sol";
import {HiKredeum} from "../src/HiKredeum.sol";

contract DeployHiKredeum is DeployLite {
    function deployHiKredeum() public returns (address) {
        vm.broadcast();
        return address(new HiKredeum());
    }

    function run() public virtual {
        deploy("HiKredeum");
    }
}
