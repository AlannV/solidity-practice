// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

//import the contract
import "./SimpleStorage.sol";

contract StorageFactory {
    //define the constructor
    SimpleStorage public simpleStorage;

    function createSimpleStorage() public {
        //deploy a simpleStorage from the storage factory
        simpleStorage = new SimpleStorage();
    }
}
