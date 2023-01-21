//SPDX-License-Identifier: SHREYA
pragma solidity 0.8.15;
contract TheBlockchainMessenger{
    //to count frequency of updation
    uint public changeCounter;
    //stores address of person who first deploys the smart contract
    address public owner;
    string public message;
    constructor(){
        owner=msg.sender;
    }
    function updateMessage(string memory _newMessage) public {
        //whenever owner updates message the counter is incremented by 1
        if(msg.sender==owner){
            message=_newMessage;
            changeCounter++;
        }
    }
}
