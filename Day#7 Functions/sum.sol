// SPDX-License-Identifier: aIT
pragma solidity >=0.5.0 <0.9.0;

contract day1 {
    function digitSum(int num) public pure returns (int)
    {
        int sum=0;

        while (num>0)
        {
            int temp = num % 10;
            sum += temp;
            num = num/10;
        }

        
        return sum;
    }
}
