//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "./VariablesStorage.sol";

contract Main is VariablesStorage  { 
   
   string internal _anotherVal;
   
    function setNumber(uint256 id) public {
        this.setid256(id);
    }

    function getNumber() public view returns (uint256) {
        return this.getid256();
    }

    function setVal(string memory value) public virtual override  {
        emit ValueChanged (_val, value);
        _anotherVal = value;
    }

      function getValue() public view returns (string memory)  {
        return _anotherVal;
    }
  
}