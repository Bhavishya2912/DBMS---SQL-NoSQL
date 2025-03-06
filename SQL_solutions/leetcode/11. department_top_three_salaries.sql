-- DEPARTMENT TOP 3 SALARIES
-- https://leetcode.com/problems/department-top-three-salaries

-- APPROACH:

-- Join the employee and department tables on the departmentId
-- Use a subquery to find the employees within each department who have a salary higher than the current employee


select  d.name as Department, e.name as Employee , e.Salary as Salary
from employee e
left join department d
on e.departmentId = d.id
where (select count(distinct e2.salary)
from employee e2
where e2.salary > e.salary and e2.departmentId = e.departmentId
) < 3 