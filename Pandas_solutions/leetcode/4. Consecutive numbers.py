# -- To find numbers that appear for 3 times consecutively
# -- https://leetcode.com/problems/consecutive-numbers/

# SQL SOLUTION: SQL_solutions\leetcode\4.Consecutive numbers.sql

# PANDAS SOLUTION:

import pandas as pd

def consecutive_numbers(logs: pd.DataFrame) -> pd.DataFrame:
    num = list(logs['num'])

    # set a set to store the consecutive numbers
    ConsecutiveNums = []

    for i in range (1, len(num)-1): 
        if num[i-1] == num[i] and num[i+1] == num[i]: 
            print(num[i])
            ConsecutiveNums.append(num[i])

    ConsecutiveNums = list(set(ConsecutiveNums))
    return pd.DataFrame({'ConsecutiveNums': ConsecutiveNums})
