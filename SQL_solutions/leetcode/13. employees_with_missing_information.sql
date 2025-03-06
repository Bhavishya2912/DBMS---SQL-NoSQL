-- EMPLOYEES WITH MISSING INFORMATION
-- https://leetcode.com/problems/employees-with-missing-information

/*
APPROACH:
- As there is no direct OUTER JOIN in mysql, we can use union of left and right join
- and select  employee_id values that are present in the employees table but not in the salaries table 
  and the employee_id values that are present in the salaries table but not in the employees table.
*/


SELECT Employees.employee_id
FROM Employees
LEFT JOIN Salaries
ON Employees.employee_id = Salaries.employee_id
WHERE Salaries.salary IS NULL

UNION

SELECT Salaries.employee_id
FROM Salaries
LEFT JOIN Employees
ON Employees.employee_id = Salaries.employee_id
WHERE Employees.name IS NULL

ORDER BY employee_id;