'''
-- To find numbers that appear for 3 times consecutively
-- https://leetcode.com/problems/consecutive-numbers/

SQL SOLUTION: SQL_solutions\leetcode\4.Consecutive numbers.sql
'''

# PANDAS SOLUTION:

# APPROACH 1: SIMPLE ITERATION - USING SET (as we need unique values only)
import pandas as pd

def consecutive_numbers(logs: pd.DataFrame) -> pd.DataFrame:
    ConsecutiveNums = set()

    for i in range(1,len(logs['num'])-1):
        if logs['num'][i] == logs['num'][i-1] == logs['num'][i+1]:
            ConsecutiveNums.add(logs['num'][i])
    return pd.DataFrame({'ConsecutiveNums': list(ConsecutiveNums)})


# APPROACH 2: using loc or iloc
# def consecutive_numbers(logs: pd.DataFrame) -> pd.DataFrame:
#     ConsecutiveNums = pd.DataFrame(columns = ['id', 'num'])
#     for i in range(1,len(logs['num'])-1):
#         if logs.iloc[i-1]['num'] == logs.iloc[i]['num'] == logs.iloc[i+1]['num']:
#             ConsecutiveNums = pd.concat([ConsecutiveNums, logs.iloc[[i]]], ignore_index=True)

#     return ConsecutiveNums[['num']].drop_duplicates().rename(columns = {'num': 'ConsecutiveNums'})


# # APPROACH 3: using shift
# def consecutive_numbers(logs: pd.DataFrame) -> pd.DataFrame:
#     ConsecutiveNums = logs[(logs['num'] == logs['num'].shift(1)) & (logs['num'] == logs['num'].shift(-1))]
#     return ConsecutiveNums[['num']].drop_duplicates().rename(columns = {'num': 'ConsecutiveNums'})
