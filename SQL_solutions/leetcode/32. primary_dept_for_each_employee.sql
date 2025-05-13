-- 1789. Primary Department for Each Employee



select employee_id, department_id
from Employee
where primary_flag = 'Y'
union 
select employee_id, department_id
from Employee
group by employee_id
having count(employee_id) = 1


-- OR.. solution 2:
SELECT employee_id, department_id
FROM employee
WHERE primary_flag = 'Y'
or employee_id in (select employee_id from employee group by employee_id having count(employee_id) = 1)