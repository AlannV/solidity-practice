// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {

    // if we declare our variables as "public"
    // they will have an implicit retrieve function
    uint256 public storedNumber;


    function store(uint _storedNumber) public {
        storedNumber = _storedNumber;
    }

    // view and pure functions don't spen gas
    //because they didn't use computational power
    function retrieve() public view returns(uint256){
        return storedNumber;
    }
    // if we call a view or pure function inside an
    // that it cost gas
}
