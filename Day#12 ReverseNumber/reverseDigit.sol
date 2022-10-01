// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.5.0 <0.9.0;

contract Transactions {
    event e(int val);
    mapping(int=> int) reverseMap;
    
    function reverseDigit(uint n) public returns(int)
    {   
        int count;
        int num = int(n);
        int maxMul =1;
        
        while (num>0)
        {
            int temp = num%10;
            reverseMap[count] = temp;
            num = num/10;
            maxMul = maxMul*10;
            count++;            
        }
        
        int reverseNum;

        for (int i=0;i<count;i++)
        {
            maxMul = maxMul/10;
            reverseNum+=reverseMap[i]*maxMul;
        }

        emit e(reverseNum);
        return (reverseNum);
    }

}
