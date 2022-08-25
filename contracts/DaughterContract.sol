// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./SonContract.sol";

contract DaughterContract is Ownable {

  string public name;
  uint public age;
  bool public canDate;
  uint public allowance;

  constructor(
    string memory _daughtersName,
    uint _daughtersAge
  ) 
  {
    name = _daughtersName;
    age = _daughtersAge;
    canDate = false;
    allowance = 100;
  }

  function permissionToDate() public onlyOwner {
    canDate = true;
  }

  function howMuch() public view returns (uint) {
    return allowance;
  }

}