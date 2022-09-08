// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
contract MycontractTest{

string text;

event TextMessage(string );

function setText(string memory _text) external{

    text=_text;
    emit TextMessage(_text);
}
function getText() public view returns(string memory)
{
    return text;
}


}
