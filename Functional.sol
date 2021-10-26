pragma solidity 0.5.1;

import "./Storage.sol";

contract Functional is Storage {
    function getNumberOfSomething() public view returns (uint256) {
        return Storage.getNumber();
    }

    function setNumberOfSomething(uint256 toSet) public {
        Storage.setNumber(toSet);
    }
}
