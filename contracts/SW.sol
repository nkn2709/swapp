// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Swap2 {
    ERC20 public token1;
    address public owner1;

    ERC20 public token2;
    address public owner2;

    uint public amount;
    constructor(
    ) {}

    function swap(address _token1,
        address _owner1,
        address _token2,
        address _owner2,
        uint _amount
    ) public {

        token1 = ERC20(_token1);
        owner1 = _owner1;
        token2 = ERC20(_token2);
        owner2 = _owner2;

        amount = _amount;

        uint blance1 = token1.balanceOf(address(this));
        uint blance2 = token2.balanceOf(address(this));

        require(blance1 == blance2, "Not enough balance swap");

        _safeTransfer(token1, owner2, amount);
        _safeTransfer(token2, owner1, amount);
    }

    function _safeTransfer(
        ERC20Interface token,
        address recipient,
        uint amount
    ) private {
        bool sent = token.transfer(recipient, amount);
        require(sent, "Token transfer failed");
    }
}