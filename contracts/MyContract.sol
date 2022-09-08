// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
contract Mycontract{
    struct Customer {
        uint no;
        string name;
        string dept;
        
    }

    enum ColorPicker{

        RED,GREEN,YELLOW
    }
    ColorPicker color;
function setColor() public {
    color=ColorPicker.YELLOW;
}
function getColor() public view returns(ColorPicker) {
    return color;
}

Customer[] record;

mapping(address=>uint) public mappingData;
    

    function setCustomer(string memory _na,string memory _de,uint _n) public{

record.push(Customer(_n,_na,_de));
    }
function getCustomer(uint _index) public view returns(uint,string memory,string memory){

return (record[_index].no,record[_index].name,record[_index].dept);
    }
    function deleteCustomer() public {

record.pop();
    }
function sender() public view returns(address){
    return msg.sender;
}
function setMapping(uint _value) public {
    mappingData[msg.sender]=_value;
}
function getMapping() public view returns(uint) {
    return( mappingData[msg.sender]);
}
}