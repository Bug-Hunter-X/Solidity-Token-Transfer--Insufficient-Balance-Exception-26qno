# Solidity Token Transfer Bug
This repository demonstrates a common bug in Solidity smart contracts related to token transfers: insufficient balance handling. The `transfer` function lacks robust error handling for the case where the sender does not have enough balance.

## Bug Description
The `transfer` function in `bug.sol` uses a `require` statement to check for sufficient balance. However, if the `require` condition is not met, an exception is thrown, potentially causing the transaction to revert and leaving the contract in an inconsistent state.  This also consumes gas. 

## Solution
The `bugSolution.sol` demonstrates an improved `transfer` function that handles the insufficient balance scenario gracefully by returning a boolean value to indicate success or failure.