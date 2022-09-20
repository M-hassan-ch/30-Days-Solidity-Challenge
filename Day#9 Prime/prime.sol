// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day3 {
  
      function prime(uint num) public pure returns(uint)
      {
        for (uint i=1;i<=(num/2)+1;i++)
        {
            
            if (num%i==0 && i>1 && num!=i)
            {
                return 0;
            }

        }
        return 1;
      }
}
