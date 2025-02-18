-- SECOND HIGHEST SALARY


-- PANDAS SOLUTION - 

-- APPROACH 1:
/* To find the second highest salary from an employee table, and return NULL if no second highest salary present.
- So, first find the highest or max salary for the employee.
- then filter out any salaries that are equal to the maximum salary, hence among all salaries will be less than the max salary, form those select MAX now.
*/

SELECT MAX(salary) AS SecondHighestSalary 
FROM Employee 
WHERE salary < (SELECT MAX(salary) FROM Employee);


-- APPROACH 2: USING LIMIT AND OFFSET
/* LIMIT return first n rows, offset skips firsts n rows and returns remaining (limit 10 offest 5 means skip first 5 rows and and return next 10 rows).
- But if value not present - it return empty row( and not NULL). But we want to return NULL in 2nd highest salary (according to the question)
- Hence use Scalar subquery :
A scalar subquery is a subquery (a query nested within another query) that returns a single value (a single row with a single column).
If the subquery returns no rows, the scalar subquery expression returns NULL. If the subquery returns more than one row, it returns an error.

*/

SELECT 
(select distinct Salary
from Employee
order by salary desc
limit 1 offset 1)
as SecondHighestSalary
