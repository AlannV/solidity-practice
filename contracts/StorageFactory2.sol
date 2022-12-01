// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

//import the contract

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorage() public {
        //deploy a simpleStorage from the storage factory
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        
        // address
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];

        // ABI _ application binary interface
        // the ABI would tell our code how to exactly interact with a contract
        simpleStorage.store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        return simpleStorage.retrieveStoredNumber();
    }
}
