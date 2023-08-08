# Token Smart Contract

This repository contains a Solidity smart contract for the Aditya token. The contract allows token minting, burning, and transferring. The owner of the contract has special privileges such as minting new tokens.


## Overview

The `Token.sol` file in this repository defines a basic ERC-20 compatible token contract. It includes the following features:

- Token name: Aditya
- Token abbreviation: adi
- Minting new tokens by the contract owner
- Burning tokens
- Transferring tokens between addresses

The contract owner has exclusive access to the minting function to create new tokens. Users can burn and transfer tokens according to their balances.

## Getting Started

### Prerequisites

To interact with the smart contract, you'll need:

- A compatible Ethereum development environment (e.g., Remix, Truffle, or Hardhat)
- An Ethereum wallet for deploying the contract and interacting with it

### Deployment

1. Deploy the `Token.sol` contract using your preferred Ethereum development environment.
2. Once deployed, interact with the contract using the provided functions.

## Usage

### Minting Tokens

Only the owner of the contract can mint new tokens using the `mint` function:

solidity
function mint(address _address, uint _value) public onlyOwner {
    // Mint '_value' amount of tokens and assign them to '_address'
}


### Burning Tokens

Users can burn their own tokens using the `burn` function:

solidity
function burn(address _address, uint _value) public {
    // Burn '_value' amount of tokens from the balance of '_address'
}


### Transferring Tokens

Users can transfer tokens to another address using the `transfer` function:

solidity
function transfer(address _to, uint _value) public {
    // Transfer '_value' amount of tokens from the sender's balance to '_to'
}


For more details on the contract functions, refer to the `Token.sol` source code.


## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
