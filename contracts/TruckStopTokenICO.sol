// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TruckStopToken is ERC20{

    address immutable Owner; // Will add TST to Uniswap pool for trading.
    address immutable StrongManPersonalFinance = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2; //Need Metamask wallet address
    address immutable J_Naugy = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db; //Need Metamask wallet address from

    address public TruckStopTokenAddress = address(this);    
    TruckStopToken tokenObject = TruckStopToken(TruckStopTokenAddress);

    constructor() ERC20("TruckStopToken","TST") { //Fair ICOs like ETH have 80% public sale [We have 82%]. 1 quadrillion (10**15) tokens.
        Owner = msg.sender;
        _mint(Owner,                        (88)*(10**31) ); //Mint costs less gas than transfer. Owner will keep 6 but put 82 on Uniswap
        _mint(StrongManPersonalFinance,      (6)*(10**31) ); //Mint costs less gas than transfer. 
        _mint(J_Naugy,                       (6)*(10**31) ); //18 [base] + 13 [10 trillion] = 10**31
    }
    
}
