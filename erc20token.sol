//SPDX-License-Identifier: MIT;
 pragma solidity ^0.8.0;


 import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MYToken is ERC20{
    uint256 initialSupply = 1000000;
     constructor()  ERC20("Nonso", "NONO") {
        _mint(msg.sender, initialSupply);
    }
    function   buyToken(address _receiver)public payable{
        //Amount is converter to ether without decimals
        uint256 amount = (msg.value*1000)/10**18;
        _mint(_receiver, amount);

    }
    

 }