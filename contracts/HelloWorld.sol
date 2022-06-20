
//SPDX-License-Identifier: Unlicense
// Specifies the version of Solidity, using semantic versioning.
// Learn more: https://solidity.readthedocs.io/en/v0.5.10/layout-of-source-files.html#pragma
pragma solidity >=0.7.3;

contract HelloWorld {

  //Emitted when update function is called
   //Smart contract events are a way for your contract to communicate that something happened on the blockchain to your app front-end, which can be 'listening' for certain events and take action when they happen.
   event UpdatedMessages(string oldStr, string newStr);


  string public message ;
  constructor(string  memory initMessage){

     // Accepts a string argument `initMessage` and sets the value into the contract's `message` storage variable).
      message = initMessage;

  } 
  function update(string memory newMessage) public{

      string memory oldMessage=message;
      message=newMessage;
      emit UpdatedMessages(oldMessage, newMessage);

  }
 
}