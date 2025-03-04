
import pandas as pd


data = [[1, 'Joe', 70000, 1], [2, 'Jim', 90000, 1], [3, 'Henry', 80000, 2], [4, 'Sam', 60000, 2], [5, 'Max', 90000, 1]]
employee = pd.DataFrame(data, columns=['id', 'name', 'salary', 'departmentId']).astype({'id':'Int64', 'name':'object', 'salary':'Int64', 'departmentId':'Int64'})
data = [[1, 'IT'], [2, 'Sales']]
department = pd.DataFrame(data, columns=['id', 'name']).astype({'id':'Int64', 'name':'object'})


import pandas as pd

# def department_highest_salary(employee: pd.DataFrame, department: pd.DataFrame) -> pd.DataFrame:
#     merged = pd.merge(employee, department, how = 'left', left_on = 'departmentId', right_on = 'id', suffixes = ('_employee', '_department'))
#     grouped = merged.groupby('departmentId')['salary'].transform('max')
#     result = merged[merged['salary'] == grouped]
#     result = result[['name_department', 'name_employee', 'salary']]
#     result.columns=['Department', 'Employee', 'Salary']   
#     return result

import pandas as pd

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