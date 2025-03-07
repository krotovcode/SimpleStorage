// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {SimpleStorage} from "./Simplestorage.sol";

contract StorageFactory{

    SimpleStorage[] public listOfSimpleStorages;

    function createSimpleStorage() public {
        SimpleStorage newSimpleStorage = new SimpleStorage();
        listOfSimpleStorages.push(newSimpleStorage);
    }

    function sfStorage(uint256 _simpleStorageIndex, uint256 _favNum) public {
        listOfSimpleStorages[_simpleStorageIndex].store(_favNum);
    }

    function sfGet (uint256 _simpleStorageIndex) public view returns (uint256){
        return listOfSimpleStorages[_simpleStorageIndex].retrieve();
    }
    
}