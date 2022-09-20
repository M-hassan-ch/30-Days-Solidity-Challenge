// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 < 0.9.0;

contract FunctionArgument{
    uint public stateVariable;

    function set(uint param) public
    {
        stateVariable = param;
    }

    function get() public view returns(uint)
    {
        return stateVariable;
    }
}
