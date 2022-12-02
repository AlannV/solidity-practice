// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "./SimpleStorage.sol";

 // creating a new contract based on an existing one

contract ExtraStorage is SimpleStorage {
    // instead of returning the number we gonna add 5
    // we can override functions of the "superior" contract
    function store(uint256 _storedNumber) public override {
        storedNumber = _storedNumber + 5;
    }
}
