// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Test1{
    function getvalue()external  virtual returns(string memory) {
return "Sathish";
    }


}

contract Test2{
    function getvalue() external virtual returns(string memory) {
return "Kumar";
    }


}



contract Test is Test1,Test2 {
    int constant PI=3;
    struct Student {
        int regno;
        string addres;
        string dept;
        int mark;
    }

      event  studentdetails  ( int regno,
        string addres,
        string dept,
        int mark
        
        ) anonymous; 
         // anonymous does not store contract state 
enum Color{
    RED,WHITE,YELLOW
}
Color color=Color.RED;


       
 uint immutable a=10; // we can assign value for only once. We can only intialize directly or by using constructor 

Student[] studentrecord;

function getvalue()public virtual override(Test1,Test2) view returns(string memory){
return ("Hair");

}
function getvalue2()public view returns (bytes32,uint,uint,address,uint,uint,uint,uint,uint256) {  // block global variable examples 

    return (blockhash(11172231) ,block.basefee,block.chainid,block.coinbase,block.difficulty,block.gaslimit,block.number,block.timestamp,gasleft());
 }

function contractABi(Student calldata student,uint _No,string memory _name) external pure returns (bytes memory){ //ABI Encoding Exmpamples 

    return abi.encode(student,_No,_name);

}
function contractABi(bytes calldata data) external pure returns(Student memory,uint,string memory){ //ABI Encoding Exmpamples 

    (Student,uint,string)=abi.decode((int,string,string,int),data);

}

function setStudent(int _no,string memory _add,string memory _dep,int _mar) public {

assert(1 wei==1);
assert(1 gwei==1e9);
assert(1 ether==1e18);

    studentrecord.push(Student(_no,_add,_dep,_mar));

}
function getStudent() public {

    for(uint256 i=0;i<studentrecord.length;i++){
        emit studentdetails(studentrecord[i].regno,studentrecord[i].addres,studentrecord[i].dept,studentrecord[i].mark);
    }

}
}