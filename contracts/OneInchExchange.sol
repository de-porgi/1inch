// SPDX-License-Identifier: MIT

pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

import "./interfaces/IOneInchCaller.sol";
import "https://github.com/de-porgi/aave_v2/blob/main/contracts/dependencies/openzeppelin/contracts/IERC20.sol";

contract OneInchExchange {

    struct SwapDescription {
        IERC20 srcToken;
        IERC20 dstToken;
        address srcReceiver;
        address dstReceiver;
        uint256 amount;
        uint256 minReturnAmount;
        uint256 guaranteedAmount;
        uint256 flags;
        address referrer;
        bytes permit;
    }

    function swap(
        IOneInchCaller caller,
        SwapDescription calldata desc,
        IOneInchCaller.CallDescription[] calldata calls
    )
        external
        payable
        returns (uint256 returnAmount);
}
