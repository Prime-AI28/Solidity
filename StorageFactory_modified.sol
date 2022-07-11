// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.0;

import "./ExtraStorage.sol";

contract StorageFactory{
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public{
        SimpleStorage simpleStorage = new ExtraStorage();
        simpleStorageArray.push(simpleStorage);
        //we need to first create new simple storage ti find it in the array

    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        //Address
        //ABI - Application Binary Interface
        // to interact with contract we need adress and ABI
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);

    }

    function sfGET(uint256 _simmpleStorageIndex) public view returns(uint256){
        return simpleStorageArray[_simmpleStorageIndex].retrieve();
    }
}
