// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day5 {
   function uint2str(uint _i) internal pure returns (string memory _uintAsString) {
        if (_i == 0) {
            return "0";
        }
        uint j = _i;
        uint len;
        while (j != 0) {
            len++;
            j /= 10;
        }
        bytes memory bstr = new bytes(len);
        uint k = len;
        while (_i != 0) {
            k = k-1;
            uint8 temp = (48 + uint8(_i - _i / 10 * 10));
            bytes1 b1 = bytes1(temp);
            bstr[k] = b1;
            _i /= 10;
        }
        return string(bstr);
    }

    function palindrome(uint n) public pure  returns(uint)
    {
        string memory val = uint2str(n);
    
        bytes memory b = bytes(val);
        uint j = b.length-1;
        bool result=true;
        
        for (uint i=0;i<j;i++)
        {
            bytes memory val1 = new bytes(1);
            bytes memory val2 = new bytes(1);

            val1[0] = b[i];
            val2[0] = b[j];

            if (keccak256(val1)!=keccak256(val2))
            {
                result = false;
                break;
            }
            j--;
        }

        if (result)
        {
            return 1;
        }

        return 0;
    }

}
