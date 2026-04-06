// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract SimpleStorage{
    uint number;
    address public owner;
    mapping(address => uint) public myNumbers;

    constructor(){
        owner = msg.sender;
    }

    function set(uint x)public{
        require(msg.sender == owner, "Only owner can call this function");
        number = x;
    }
    function get()public view returns(uint){
        return number;
    }
     function setMyNumber(uint y)public{
        myNumbers[msg.sender] = y;
    }

    function getMyNumber()public view returns(uint){
        return myNumbers[msg.sender];
    }
}