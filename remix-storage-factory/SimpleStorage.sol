// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract SimpleStorage {
    // favoriteNumber get initialized to 0 if no value is given
    uint256 myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    // Person public myFriend = Person({ name: "Pat", favoriteNumber: 7});

    mapping(string => uint256) public nameToFavouriteNumber;

    function store(uint256 _favoriteNumber) public virtual  {
        myFavoriteNumber = _favoriteNumber;
    }

    // view, pure
    function retrive() public view returns (uint256) {
        return myFavoriteNumber;
    }

    // calldata, memory and storage are types of data locations
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavouriteNumber[_name] = _favoriteNumber;
    }
}
