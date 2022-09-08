// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
contract MycontractTest{

    mapping(int=>uint) intMap;
uint i=10;
    function setMapping(int _intvalue,uint _uintvalue) public {
        intMap[_intvalue]=_uintvalue;
    }
function getMapping() public view returns(uint) {
        return intMap[10];
    }

    function requireFunction() public view returns(uint,bytes32)
    {

assert(i==10);
return (i,blockhash(11051596));
    }


}
