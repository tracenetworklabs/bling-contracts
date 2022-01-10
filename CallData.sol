pragma solidity 0.8.10;
// SPDX-License-Identifier: UNLICENSED

contract GenerateCallData {

    struct Split {
        address splitAddress;
        uint splitPercentage;
    }
    Split[] public splits;

    bytes public data;

    function callSplit(Split[] memory _splits) public pure returns(bytes memory) {
        bytes memory _data = abi.encodeWithSignature("createSplit((address,uint256)[])",_splits);
        return _data;
    }
}
