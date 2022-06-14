//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract VariablesStorage {

    uint8 internal _id8;
    uint16 internal _id16;
    uint32 internal _id32;
    uint64 internal _id64;
    uint256 internal _id256;
    string internal _text;
    uint256 internal _sum;
    bool internal _flag;
    bytes32 internal _text1;

    string internal _val;

    event ValueChanged(string _val, string val);

    function setid8(uint8 id) public {
        _id8 = id;
    }

    function getid8() public view returns (uint8) {
        return _id8;
    }

     function setid256(uint256 id) public {
        _id256 = id;
    }

    function getid256() public view returns (uint256) {
        return _id256;
    }

    function setText(string memory text) public {
        _text = text;
    }

    function getText() public view returns (string memory) {
        return _text;
    }

    function setVal(string memory value) public virtual {
        emit ValueChanged (_val, value);
        _val = value;
    }

    function getVal() public view returns (string memory) {
        return _val;
    }
}
