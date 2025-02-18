# EMPLOYEES EARNING MORE THAN THEIR MANAGERS
#  https://leetcode.com/problems/employees-earning-more-than-their-managers/


#  SQL SOLUTION: SQL_solutions\leetcode\7. Employees_earning_more_than_managers.sql


import pandas as pd

def find_employees(employee: pd.DataFrame) -> pd.DataFrame:
    joined_new = employee.merge(employee, left_on = 'managerId', right_on = 'id', how = 'inner', suffixes = ("", "_manager"))
    joined = joined_new[['name', 'salary', 'name_manager', "salary_manager"]].rename(columns = {'name_manager': 'manager'})
    final = joined[joined['salary'] > joined['salary_manager']]
    return final[['name']].rename(columns = {'name': "Employee"})