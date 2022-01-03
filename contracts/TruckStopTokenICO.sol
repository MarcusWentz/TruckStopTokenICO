// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TruckStopToken is ERC20{

    address immutable Owner;
    address immutable StrongManPersonalFinance = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2; //Need Metamask wallet address
    address immutable J_Naugy = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db; //Need Metamask wallet address from

    address public TruckStopTokenAddress = address(this);    
    TruckStopToken tokenObject = TruckStopToken(TruckStopTokenAddress);

    constructor() ERC20("TruckStopToken","TST") { //Fair ICOs like ETH have 80% public sale [We have 82%]. 1 million tokens total.
        Owner = msg.sender;
        _mint(address(this),                (819999)*(10**18) ); //PublicAmount%3=0.
        _mint(Owner,                         (60001)*(10**18) ); //Mint costs less gas than transfer.
        _mint(StrongManPersonalFinance,      (60000)*(10**18) );
        _mint(J_Naugy,                       (60000)*(10**18) );
    }

    function swapOneMATICforOneTST() public payable { // 1 TST = 1 MATIC. WARNING: WE ARE NOT ON A DEX [AT LEAST YET]. THIS IS JUST FOR FUN.
        require(tokenObject.balanceOf(address(this)) >= msg.value, "Not enough TST in contract to match MATIC in msg.value!");
        require((msg.value > 2) && (msg.value%3 == 0), "msg.value must be greater than 2 and divisable by 0!");
        tokenObject.transfer(msg.sender, msg.value); //Reward for sending MATIC. 1 swap pair between MATIC and TST.
        payable(Owner).transfer(address(this).balance/3); //3/3 = 1
        payable(StrongManPersonalFinance).transfer(address(this).balance/2); // (3-1)/2 = 1
        payable(J_Naugy).transfer(address(this).balance); // (3-2) = 1
    }
    
}
