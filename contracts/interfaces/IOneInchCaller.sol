// SPDX-License-Identifier: MIT

pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

import "https://github.com/de-porgi/aave_v2/blob/main/contracts/dependencies/openzeppelin/contracts/IERC20.sol";
import "./IGasDiscountExtension.sol";
import "./ISafeERC20Extension.sol";


interface IOneInchCaller is ISafeERC20Extension, IGasDiscountExtension {
    struct CallDescription {
        uint256 targetWithMandatory;
        uint256 gasLimit;
        uint256 value;
        bytes data;
    }

    function makeCall(CallDescription memory desc) external;
    function makeCalls(CallDescription[] memory desc) external payable;
}
