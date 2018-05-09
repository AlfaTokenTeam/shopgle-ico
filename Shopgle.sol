pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Shopgle is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Shopgle(address _owner)  UpgradeableToken(_owner) {
    name = "Shopgle";
    symbol = "SHOPGLE";
    totalSupply = 5000000;
    decimals = 0;

    balances[_owner] = totalSupply;
  }
}