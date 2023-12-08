// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GuessTheNumber {
     address public manager;
     uint public lastWinner;
     uint public lastWinningNumber;
    
     modifier restricted() {
         require(msg.sender == manager, "Only the manager can call this function");
         _;
     }

     constructor() {
         manager = msg.sender;
     }

     function guess(uint number) external payable {
         require(msg.value > 0.1 ether, "Minimum bet is 0.1 ether");
         require(number >= 1 && number <= 10, "Number must be between 1 and 10");

         // Generate a random number from 1 to 10
         uint winningNumber = (block.timestamp % 10) + 1;

         // Record data about the last win
         lastWinner = msg.sender;
         lastWinningNumber = winningNumber;

         // Check if the participant guessed the number
         if (number == winningNumber) {
             // Transfer the participant's bet to his account and send the winnings
             payable(msg.sender).transfer(address(this).balance);
         }
     }

     function getBalance() external view restricted returns (uint) {
         return address(this).balance;
     }
}
