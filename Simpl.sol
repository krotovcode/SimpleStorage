// SPDX-License-Identifier: MIT
pragma solidity > 0.8.19; 

contract SimpleStorage{

    uint256 myFavNum;

    function store(uint256 _favNum) public {
        myFavNum = _favNum;    
    }

    function retrieve() public view returns (uint256){
        return myFavNum;
    }

    struct Person {
        uint256 favNum;
        string name;
    }

    Person[] public listOfPeople;

    mapping (string => uint256) public nametoNum;

    function addPerson(string memory _name, uint256 _fuvNum) public {
        listOfPeople.push(Person(_fuvNum, _name));
        nametoNum [_name] = _fuvNum;
    }
}