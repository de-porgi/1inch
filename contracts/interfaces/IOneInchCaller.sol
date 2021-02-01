// SPDX-License-Identifier: MIT

pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

interface IOneInchCaller {
    struct CallDescription {
        uint256 targetWithMandatory;
        uint256 gasLimit;
        uint256 value;
        bytes data;
    }
}
