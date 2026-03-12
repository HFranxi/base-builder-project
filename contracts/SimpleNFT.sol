// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleNFT {

    string public name = "BaseBuilderNFT";
    string public symbol = "BBNFT";

    uint public totalSupply;

    mapping(uint => address) public ownerOf;

    function mint() public {

        totalSupply++;

        ownerOf[totalSupply] = msg.sender;

    }

}
