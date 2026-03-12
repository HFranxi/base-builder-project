// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleStorage {

    string public message;

    constructor(string memory _message){
        message = _message;
    }

}

contract StorageFactory {

    address[] public storages;

    function createStorage(string memory _message) public {

        SimpleStorage s = new SimpleStorage(_message);

        storages.push(address(s));

    }

}
