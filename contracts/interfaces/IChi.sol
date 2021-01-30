// SPDX-License-Identifier: MIT

pragma solidity ^0.6.12;

import "https://github.com/de-porgi/aave_v2/blob/main/contracts/dependencies/openzeppelin/contracts/IERC20.sol";


interface IChi is IERC20 {
    function mint(uint256 value) external;
    function free(uint256 value) external returns (uint256 freed);
    function freeFromUpTo(address from, uint256 value) external returns (uint256 freed);
}
