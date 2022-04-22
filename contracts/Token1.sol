// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// Learn more about the ERC20 implementation
// on OpenZeppelin docs: https://docs.openzeppelin.com/contracts/4.x/erc20
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token1 is ERC20 {
    constructor(string memory name_,string memory symbol_, uint totalSupply_, address wallet_) ERC20(name_, symbol_) {
        _mint(wallet_, totalSupply_*10**decimals());
    }
}