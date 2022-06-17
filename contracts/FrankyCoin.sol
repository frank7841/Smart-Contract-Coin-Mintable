//SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract FrankyCoin is ERC20, Ownable{
    
    constructor()ERC20('Frank Coin','FC'){}


    function mint(uint256 amount)public payable{
        require(msg.value == amount * 0.001 ether, 'Invalid amount of ether');

        _mint(msg.sender, amount);
    } 

    receive()external payable{}
    fallback() external payable{}
}


