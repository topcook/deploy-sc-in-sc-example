// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./MomContract.sol";
import "./DaughterContract.sol";

contract SonContract is Ownable {

  string public name;
  uint public age;
  DaughterContract public daughter;
  MomContract public mom;
  bool public canDate;

  constructor(
    string memory _sonsName,
    uint _sonsAge,
    DaughterContract _daughter,
    address _mom
  ) 
  {
    name = _sonsName;
    age = _sonsAge;
    daughter = _daughter;
    mom = MomContract(_mom);
    canDate = false;
  }

  function permissionToDate() public onlyOwner {
    canDate = true;
  }

  function howMuchIsYourAllowance() public view returns (uint) {
    return daughter.howMuch();
  }

  function howOldAreYou() public view returns (uint) {
    return mom.getAge();
  }

}