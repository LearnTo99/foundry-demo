// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    
    address owner;
    int private count;

    constructor (int _count){
        owner = msg.sender;
        count = _count;
    }

    function getCount () public view returns (int) {
        return count;
    }

    function incrementCount () public {
        require(msg.sender == owner, "Unauthorized");
        count++;
    }

    function decrementCount () public {
        require(msg.sender == owner, "Unauthorized");
        count--;
    }
}