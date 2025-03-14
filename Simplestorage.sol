// SPDX-License-Identifier: MIT
pragma solidity >0.8.19;


contract SimpleStorage {


    uint256 myFavouriteNumber;

    // uint256[] listoOfNumebers;

    struct Person {
        uint256 favouriteNumber;
        string name;
    }
    //struct - структура

    Person[] public listOfPeople;

    mapping (string => uint256) public nameToFavNum;



    function store (uint256 _favouriteNumber) public {
        myFavouriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns(uint256){
        return myFavouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        listOfPeople.push( Person(_favouriteNumber, _name) );
        nameToFavNum[_name] = _favouriteNumber;
    }

    }


//Разница между memory и  calldata в том, что переменную memory 
//можно изменять.
