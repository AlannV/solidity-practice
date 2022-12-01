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
}
