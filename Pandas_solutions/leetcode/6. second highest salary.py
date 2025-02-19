# -- SECOND HIGHEST SALARY

# SQL SOLUTION: SQL_solutions\leetcode\6. Second highest salary.sql

# PANDAS SOLUTION - 

import pandas as pd

def second_highest_salary(employee: pd.DataFrame) -> pd.DataFrame:
    unique = employee['salary'].drop_duplicates()
    sorted_salary = unique.sort_values(ascending = False)
    if len(sorted_salary) < 2:
        return pd.DataFrame({'Secondhighestsalary': [None]}) 
    
    return pd.DataFrame({'SecondHighestSalary' : sorted_salary.iloc[1:2]})

