// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import {ElasticaEquation} from ".//ElasticaEquation.sol";

contract ElasticaToken is ERC20, Ownable {
    constructor(address initialOwner) ERC20("ElasticaToken", "ETK") Ownable(initialOwner) {
        // Mint initial supply to the deployer
        _mint(msg.sender, 20782000000000 * 10**decimals());
    }

    // Mint new tokens to a specific address
    function mint(address account, uint256 amount) external onlyOwner {
        _mint(account, amount);
    }

    // Burn tokens from the caller's balance
    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    // Burn tokens from a specific address
    function burnFrom(address account, uint256 amount) external onlyOwner {
        _burn(account, amount);
    }

}


