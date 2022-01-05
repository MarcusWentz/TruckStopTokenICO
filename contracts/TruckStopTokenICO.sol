// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TruckStopToken is ERC20{ //100 Quattuorvigintillion (10**77) is largest possible supply but not practical for trading [too hard to chart].

    address immutable Owner; // Will add TST to Uniswap pool for trading. Largest supply token at this moment is ELON about 1 Quadrillion (10**15)
    address immutable StrongManPersonalFinance = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2; //Need Metamask wallet address
    address immutable J_Naugy = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db; //Need Metamask wallet address from

    constructor() ERC20("TruckStopToken","TST") { //Fair ICOs like ETH have 80% public sale [We have 82%]. 1 Sextillion tokens.
        Owner = msg.sender;                                  //Contract deployer is the owner. 
        _mint(Owner,                        (88)*(10**37) ); //Owner will keep 6 but put 82 on Uniswap.
        _mint(StrongManPersonalFinance,      (6)*(10**37) ); //Mint costs less gas than transfer. 
        _mint(J_Naugy,                       (6)*(10**37) ); //18 [base] + 19 [10 Quintillion] + = 37. (10**37)*(88+6+6) = (10**39) = 1 Sextillion tokens.
    }
    
}
