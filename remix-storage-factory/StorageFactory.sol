// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import { SimpleStorage } from "SimpleStorage.sol";

contract StorageFactory {
    // type visibility name
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public  {
       SimpleStorage newSimpleStorage = new SimpleStorage();
       listOfSimpleStorageContracts.push(newSimpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber ) public {
        // Address
        // ABI - Application Binary Interface
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrive();
    }
}