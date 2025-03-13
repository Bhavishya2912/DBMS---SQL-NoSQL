-- EMPLOYEES WHOSE MANAGERS LEFT THE COMPANY
-- https://leetcode.com/problems/employees-whose-manager-left-the-company


-- APPROACH
-- retrieve the employee IDs of employees whose salary is less than 30000 
-- and whose manager has left the company (i.e., the manager's employee ID is not present in the employees table).
-- The results are ordered by employee ID - ascending.


select employee_id
from employees
where salary < 30000
and manager_id not in ( select employee_id from employees)
order by employee_id