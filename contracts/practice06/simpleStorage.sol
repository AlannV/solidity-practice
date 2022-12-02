// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    uint256 public storedNumber;

    function store(uint256 _storedNumber) public {
        storedNumber = _storedNumber;
    }
}
