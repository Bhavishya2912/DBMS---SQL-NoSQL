# -- EMPLOYEE BONUS
# -- https://leetcode.com/problems/employee-bonus


# SQL SOLUTION: SQL_solutions\leetcode\2. Employee bonus.sql

import pandas as pd

import pandas as pd

def employee_bonus(employee: pd.DataFrame, bonus: pd.DataFrame) -> pd.DataFrame:
    joined = pd.merge(employee, bonus, on='empId', how='left')
    filtered = joined[(joined['bonus'] < 1000) | (joined['bonus'].isna())]
    
    return filtered[['name', 'bonus']]