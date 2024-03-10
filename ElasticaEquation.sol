//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; // version number

contract ElasticaEquation {
    // boolean, uint, int, address, bytes
    uint256 M2MoneySupply  = 20781000000000;
    uint256 M2MoneyVelocity = 137;
    uint256 RealGDP = 22668000000000;

    function storeM2m(uint256 _M2MoneySupply) public {
    M2MoneySupply = _M2MoneySupply;
}

function storeM2v(uint256 _M2MoneyVelocity) public {
    M2MoneyVelocity = _M2MoneyVelocity;
}

function storeRGp(uint256 _RealGDP) public {
    RealGDP = _RealGDP;
}

function getCurrentPrices() public view returns (uint256) {
    return (M2MoneySupply * M2MoneyVelocity) / RealGDP;
}
}
