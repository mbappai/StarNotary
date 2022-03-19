// SPDX-License-Identifier: MIT
pragma solidity >=0.4.24;

contract StarNotary {

    string public starName;
    address public starOwner;

    event claimedStar(address owner);

    constructor() public{
        starName = "My awesome star";
    }

    function claimStar() public{
        starOwner = msg.sender;
        emit claimedStar(msg.sender);
    }

    function changeStarName(string memory _newName) public{
        starName = _newName;
    }

    
}