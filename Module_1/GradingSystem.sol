// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract GradingSystem {
    mapping(address => uint256) public studentGrades;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the have access");
        _;
    }

    function setGrade(address _student, uint256 _grade) public onlyOwner {
        // require fucntion used
        require(_grade <= 100, "Grade must be between 0 and 100");

        // Used assert
        assert(_student != address(0));

        studentGrades[_student] = _grade;
    }

    function getGrade(address _student) public view returns (uint256) {
        assert(_student != address(0));

        // Using require to check if the student has a grade assigned
        require(
            studentGrades[_student] != 0,
            "Student has not been assigned a grade"
        );

        return studentGrades[_student];
    }

    function passOrFail(address _student) public view returns (string memory) {
        // Using assert to ensure the address is not zero
        assert(_student != address(0));

        uint256 grade = studentGrades[_student];

        // Using revert to fail if the student does not have a grade assigned
        if (grade == 0) {
            revert("Student has not been assigned a grade");
        }

        if (grade >= 50) {
            return "Pass";
        } else {
            return "Fail";
        }
    }
}
