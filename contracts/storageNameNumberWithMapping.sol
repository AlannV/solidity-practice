// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {

    uint256 storedNumber;

    struct People {
        uint256 storedNumber;
        string name;
    }

    // a mapping variable is a pair key-value
    // we can access to the values, passing the key as an argument
    mapping(string => uint256) public nameToNumber;

    People[] public people;

    function store(uint _storedNumber) public {
        storedNumber = _storedNumber;
    }

    function retrieveStoredNumber() public view returns(uint256){
        return storedNumber;
    }

    // memory is used to especify where to store data 
    // we use memory for the arguments of functions
    function addPerson(string memory _name, uint256 _storedNumber) public {
        people.push(People(_storedNumber, _name));
        // this is the way we can store a pair key value
        nameToNumber [_name] = _storedNumber;
    }
}
