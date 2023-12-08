# Guess The Number Game Contract

This is a simple Ethereum smart contract written in Solidity for a "Guess The Number" game.

🎮 **Game Rules:**
- Participants can make bets to guess a number from 1 to 10.
- The minimum bet is 0.1 ether.
- If a participant correctly guesses the number, they win the entire pot.

🏗 **Contract Details:**
- **`manager`**: The address of the contract manager who can control certain functions.
- **`lastWinner`**: The address of the participant who won the last round.
- **`lastWinningNumber`**: The winning number of the last round.

🚀 **How to Play:**
1. Deploy the contract to the Ethereum blockchain.
2. Make sure you have some ether in your account to place bets.
3. Call the `guess` function with a value greater than 0.1 ether and your chosen number.
4. If your number matches the randomly generated winning number (1 to 10), you win the pot!

🔒 **Restricted Functions:**
- The contract includes a `restricted` modifier, ensuring that certain functions can only be called by the contract manager.

📊 **Check Contract Balance:**
- Use the `getBalance` function (restricted to the manager) to check the current balance of the contract.

📝 **Disclaimer:**
- This code is a simple example and should not be used in production without thorough testing and security audits.

🚨 **Security Note:**
- Always follow best practices for smart contract development and keep in mind potential security vulnerabilities.

**Note:** This code is provided for educational purposes and should be used responsibly.
