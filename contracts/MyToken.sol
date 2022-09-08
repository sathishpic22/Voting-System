// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
contract MyToken{

string tokenName;
string tokenSymbol;
mapping (address=>uint256) balance;
mapping(address=>mapping (address=>uint256)) public allowance;

uint j=50;

event transfer(
    address _from,
    address _to,
    uint256 amount
);

function balanceAmount() public view returns(uint){

    return j;
}

function balanceOf(address _address) public view returns(uint256){

return balance[_address];
}

function totalSupply(uint256 _totalAmount) public {

balance[msg.sender]=_totalAmount;
}

function fundTransfer(address _receiver,uint256 _amount) public {
require(balance[msg.sender]>=_amount,"You dobn't have sufficiant amount in your wallet...");
balance[msg.sender]-=_amount;
balance[_receiver]+=_amount;
emit transfer(msg.sender,_receiver,_amount);
}

}

