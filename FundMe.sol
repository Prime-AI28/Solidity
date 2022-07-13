//Get funds from user
// Withdraw funds
//Set a minimum funding value in USD

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract FundME{

    /*
    *Network:
    * Aggregator: ETH/USD
    *Address: 
    */

    //uint256 public number;
    uint256 public minimumUSD = 50; // use to check that the money send should hold value greater than 50 USD


    function fund() public payable{
        // Want to be able to set a minimum fund
        // 1. HOw do we send ETH to this contract?
        //number = 5; // revert function changes it back to what it was if the require fuctio is false
        // it returns the leftover fees
        require(msg.value>= minimumUSD, "Didn't send enough!"); // To get the value of money they are sending 
        // require is use to put a condition 
        // 1 eth = 1e18 == 1 * 10**18 == 1000000000000000000 wei
        // can't use API's
    }

    // function withdraw(){}
}
