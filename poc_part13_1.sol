// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
interface Relay {
    function attack(bytes8 key) external;
}

contract attack{
    Relay target;
    address addr;
    event log(bool);
    function poc(address addr, bytes8 key) public {
        target=Relay(addr);
        target.attack(key);
        emit log(uint32(uint64(key)) == uint16(uint64(key)));
        emit log(uint32(uint64(key)) != uint64(key));
        emit log(uint32(uint64(key)) ==  uint16(uint160(tx.origin)));
    }



}