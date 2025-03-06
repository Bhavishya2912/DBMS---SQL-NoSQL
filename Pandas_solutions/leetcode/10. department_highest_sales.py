# -- DEPARTMENT HIGHEST SALARY
# -- https://leetcode.com/problems/department-highest-salary

# SQL Solution: SQL_solutions\leetcode\10. department_highest_salary.sql

# Pandas solution:

import pandas as pd

# APPROACH 1:EFFICIENT- Using groupby and transform operations, then filtering the result.

def department_highest_salary(employee: pd.DataFrame, department: pd.DataFrame) -> pd.DataFrame:
    merged = pd.merge(employee, department, how = 'left', left_on = 'departmentId', right_on = 'id', suffixes = ('_employee', '_department'))
    grouped = merged.groupby('departmentId')['salary'].transform('max')
    result = merged[merged['salary'] == grouped]
    
    result = result[['name_department', 'name_employee', 'salary']]
    result.columns=['Department', 'Employee', 'Salary']   
    return result



# APPROACH 2: SIMPLE BEGINNER FRIENDLY: Using only groupby, merge and inner join. 
def department_highest_salary(employee: pd.DataFrame, department: pd.DataFrame) -> pd.DataFrame:
    merged = pd.merge(employee, department, how = 'left', left_on = 'departmentId', right_on = 'id', suffixes = ('_employee', '_department'))
    max_salaries = merged.groupby('departmentId')['salary'].max()
    filtered = pd.merge(merged,max_salaries, how = 'inner', on = ['departmentId', 'salary'])
    
    result = filtered[['name_employee', 'name_department', 'salary']].rename(columns={
        'name_employee': 'Employee',
        'name_department': 'Department',
        'salary': 'Salary'
    })
    return result