pragma solidity ^0.4.7;

import "ownable.sol";

contract SimpleStorage is Ownable {
  uint public storedData;

  function() payable { }

  function SimpleStorage(uint initialValue) {
    storedData = initialValue;
  }

  function set(uint x) {
    storedData = x;
  }

  function set2(uint x, uint unusedGiveWarning) onlyOwner {
    storedData = x;
  }

  function get() constant returns (uint retVal) {
    return storedData;
  }

  function getS() constant returns (string d) {
    return "hello";
  }

}
