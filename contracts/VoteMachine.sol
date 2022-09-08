// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.7;
contract Voting{

address public approver;
constructor(){
approver=msg.sender;
    }

struct Voter{
        string name;
        bool isvoted;
        bool isapproved;
}

struct Contestent{
    string contestentName;
    int voteCount;
}
mapping(address=>Voter) voters;

Contestent[] list;

function addContestent(string memory _name)public{

    list.push(Contestent(_name,0));
}

function getContestent()public view returns (Contestent[] memory){
return list;
}

function voterApproval(address _voterAddress,string memory _votername)external {

 require(approver==msg.sender,"Approver Only can give approval for voter");
require((!voters[_voterAddress].isvoted),"you have already voted");
voters[_voterAddress].name=_votername;
voters[_voterAddress].isapproved=true;
}


function Vote(address _voterAddress,uint _contestid) public {

    require(voters[_voterAddress].isapproved,"You are not approved to vote ");
    require(!voters[_voterAddress].isvoted,"You are not approved to vote ");
voters[_voterAddress].isvoted=true;
    list[_contestid].voteCount+=1;
 
}

function getVoterDetails (address _voterAddress)public view returns(Voter memory){
    return voters[_voterAddress];
}


function Winner()public view returns(int,string memory){

string memory winner ;
int256 maxVote;
int i;
 maxVote = list[0].voteCount;
    for( i = 1 ; i <int (list.length);i++) {
        if(maxVote < list[uint256(i)].voteCount) {
            maxVote = list[uint(i)].voteCount;
            winner=list[uint256(i)].contestentName;
        }
    }
    return (maxVote,winner);

}

}