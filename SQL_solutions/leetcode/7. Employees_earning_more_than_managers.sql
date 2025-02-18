-- EMPLOYEES EARNING MORE THAN THEIR MANAGERS
-- https://leetcode.com/problems/employees-earning-more-than-their-managers/

-- PANDAS APPROACH: Pandas_solutions\leetcode\7.employees earning more than managers.py

/* SQL SOLUTION APPROACH:
In Table each employee has a managerID, which is also an employee ID 
- Hence we Self / INNER join the table to find managers for all employees
*/

SELECT E1.name as Employee
FROM EMPLOYEE E1, EMPLOYEE E2
WHERE E1.ManagerId = E2.Id AND E1.Salary > E2.Salary;

-- Approach 2: Using JOIN
SELECT E1.name as Employee
from Employee E1
INNER JOIN Employee E2
ON E1.ManagerId = E2.Id
WHERE E1.Salary > E2.Salary;
