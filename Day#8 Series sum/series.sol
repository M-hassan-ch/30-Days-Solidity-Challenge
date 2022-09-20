// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day2 {
    function nthTerm(uint n, uint a, uint b, uint c) public pure returns(uint)
    {
        uint[100] memory arr;
        
        arr[0] = a;
        arr[1] = b;
        arr[2] = c;

        for (uint i=0;i<n;i++)
        {
            if (i>=3)
            {
               arr[i] = arr[i-1]+arr[i-2]+arr[i-3];
            }
        }

        return arr[n-1];
    }
}
