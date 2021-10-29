pragma solidity 0.5.1;

import "./Storage.sol";

contract Proxy {
    address currentAddress;

    constructor(address _currentAddress) public {
        currentAddress = _currentAddress;
    }

    function upgrade(address _currentAddress) public {
        currentAddress = _currentAddress;
    }

    function getNumberOfSomething() public returns (bytes memory) {
        (bool res, bytes memory data) = currentAddress.delegatecall(
            abi.encodePacked(bytes4(keccak256("getNumberOfSomething()")))
        );
        return data;
    }

    function setNumberOfSomething(uint256 _number)
        public
        returns (bytes memory)
    {
        (bool res, bytes memory data) = currentAddress.delegatecall(
            abi.encodePacked(
                bytes4(keccak256("setNumberOfSomething(uint256)")),
                _number
            )
        );
        return data;
    }
}
