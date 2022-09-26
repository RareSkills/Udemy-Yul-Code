//SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

contract WithdrawV1 {
    constructor() payable {}

    address public constant owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    function withdraw() external {
        payable(owner).transfer(address(this).balance);
        (bool s, ) = payable(owner).call{value: address(this).balance}("");
        require(s);
    }
}

contract WithdrawV2 {
    constructor() payable {}

    address public constant owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    function withdraw() external {
        assembly {
            let s := call(gas(), owner, selfbalance(), 0, 0, 0, 0)
            if iszero(s) {
                revert(0, 0)
            }
        }
    }
}
