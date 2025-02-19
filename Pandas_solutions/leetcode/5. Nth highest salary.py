# -- Nth HIGHEST SALARY (Using functions)
# -- https://leetcode.com/problems/nth-highest-salary/

# SQL SOLUTION - SQL_solutions\leetcode\5.Nth highest salary.sql

# PANDAS SOLUTION -
import pandas as pd

def nth_highest_salary(employee: pd.DataFrame, N: int) -> pd.DataFrame:
    unique = employee['salary'].drop_duplicates()
    sorted = unique.sort_values(ascending = False)
    if len(sorted) < N or N <= 0:
        return pd.DataFrame({f'getNthHighestSalary({N})' : [None]})

    nth_highest = sorted.iloc[N-1]
    return pd.DataFrame({f'getNthHighestSalary({N})': [nth_highest]})
