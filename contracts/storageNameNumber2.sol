// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {

    uint256 storedNumber;

    struct People {
        uint256 storedNumber;
        string name;
    }

    // the better way we can make objects lists is with an
    // array, we define arrays with this sintax 
    // uint256[] public storedNumberList
    // string[] public stringList, etc

    People[] public people;

    // we can especify the size of the array with this sintax
    // People[3] public people
    // in this case the array will have a max of 3 indexes inside
    // if we don't specify a number, the array will be dinamic


    function store(uint _storedNumber) public {
        storedNumber = _storedNumber;
    }

    function retrieveStoredNumber() public view returns(uint256){
        return storedNumber;
    }

    // memory is used to especify the 
    function addPerson(string memory _name, uint256 _storedNumber) public {
        people.push(People(_storedNumber, _name));
    }
}
