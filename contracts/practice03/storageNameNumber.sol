// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {

    uint256 public storedNumber;
    
    // creating a new instance of People
    People public person = People({
        storedNumber: 2,
        name: "Alan"
        });

    // define a People constructor
    struct People {
        uint256 storedNumber;
        string name;
    }

    function store(uint _storedNumber) public {
        storedNumber = _storedNumber;
    }

    function retrieve() public view returns(uint256){
        return storedNumber;
    }
}
