-- DEPARTMENT HIGHEST SALARY
-- https://leetcode.com/problems/department-highest-salary


/* APPROACH:
    We can use a subquery to find the highest salary in each department.
    Then, we join the department and employee tables on the departmentId and select the relevant columns.
    Finally, we order the results by department name.
*/

select d.name as Department, e.name as Employee, e.salary as Salary
from department d
right join employee e
on d.id = e.departmentId
where salary = (
    select max(e.salary)
    from employee e
    where e.departmentId = d.id
)
order by d.name