// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "forge-std/Script.sol";
import {TrusterLenderPool} from "../src/TrusterLenderPool.sol";
import {DamnValuableToken} from "../DamnValuableToken.sol";

contract DeployTrusterLenderPool is Script {
    function run() external {
        vm.startBroadcast(); // no private key required for local / anvil / fork testing

        DamnValuableToken token = new DamnValuableToken();
        console.log("DamnValuableToken deployed at:", address(token));

        TrusterLenderPool pool = new TrusterLenderPool(token);
        console.log("TrusterLenderPool deployed at:", address(pool));

        vm.stopBroadcast();
    }
}