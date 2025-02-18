# -- SECOND HIGHEST SALARY


# -- PANDAS SOLUTION - 

# -- APPROACH:

# /* To find the second highest salary from an employee table, and return NULL if no second highest salary present.
# - So, first find the highest or max salary for the employee.
# - then filter out any salaries that are equal to the maximum salary, hence among all salaries will be less than the max salary, form those select MAX now.
# */

import pandas as pd

def second_highest_salary(employee: pd.DataFrame) -> pd.DataFrame:
    unique = employee['salary'].drop_duplicates()
    sorted_salary = unique.sort_values(ascending = False)
    if len(sorted_salary) < 2:
        return pd.DataFrame({'Secondhighestsalary': [None]}) 
    
    return pd.DataFrame({'SecondHighestSalary' : sorted_salary.iloc[1:2]})

