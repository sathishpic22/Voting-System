// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;

struct Student {
    string myaddress;
    string name;
    int No;
}

Student[] studetails;
    constructor() {
        console.log("Yo yo, I am a contract and I am smart");
    }

    function wave() public {
        totalWaves += 1;
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

    function setStudent(string memory _add,string memory _name, int _mark) public{

        studetails.push(Student(_add,_name,_mark));
    } 
 function getStudent(uint256 length) public view returns(Student memory){

        return studetails[length];
    } 

}