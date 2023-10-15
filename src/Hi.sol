// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Hi {
    string private _hi;

    function setHi(string memory hi_) public {
        _hi = hi_;
    }

    function getHi() public view returns (string memory hi_) {
        hi_ = _hi;
    }
}
