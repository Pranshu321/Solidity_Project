// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract TodoList {
    uint256 public taskcount = 0;

    struct Task {
        uint256 id;
        string content;
        bool completed;
    }

    // Tasks with the new id's
    mapping(uint256 => Task) public tasks;

    constructor(){
        createTask("Check Out https://pranshuportfolio.netlify.app");
    }

    function createTask(string memory _content) public {
        taskcount++;
        tasks[taskcount] = Task(taskcount, _content, false);
    }
}
