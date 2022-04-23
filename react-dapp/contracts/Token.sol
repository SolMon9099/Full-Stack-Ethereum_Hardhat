//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// contract Token {
//   string public name = "Nader Dabit Token";
//   string public symbol = "NDT";
//   uint public totalSupply = 1000000;
//   mapping(address => uint) balances;

//   constructor() {
//     balances[msg.sender] = totalSupply;
//   }

//   function transfer(address to, uint amount) external {
//     require(balances[msg.sender] >= amount, "Not enough tokens");
//     balances[msg.sender] -= amount;
//     balances[to] += amount;
//   }

//   function balanceOf(address account) external view returns (uint) {
//     return balances[account];
//   }
// }
contract Token is ERC20 {
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        // Mint 100 tokens to msg.sender
        // Similar to how
        // 1 dollar = 100 cents
        // 1 token = 1 * (10 ** decimals)
        _mint(msg.sender, 100 * 10**uint(decimals()));
    }
}