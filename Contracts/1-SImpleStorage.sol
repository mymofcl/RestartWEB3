//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract SimpleStorage{
    /* First Module*/
    uint favoritNumber;

    function set(uint _value) public{
        favoritNumber=_value;
    }
    function get() public view returns(uint){
        return favoritNumber;
    }

    /* Second Module */
    mapping(uint=>string) public id2name;
    mapping(string=>uint) public name2id;
    string[] public animal;
    function enterAnimal(string memory _Animal) public{
        animal.push(_Animal);
    }

    struct Student{
        uint id;
        string name;
    }

    Student[] public studentList;

    function enterStudent(uint _id, string memory _name) public{
        studentList.push(Student(_id,_name));
        id2name[_id]=_name;
        name2id[_name]=_id;
    }

}