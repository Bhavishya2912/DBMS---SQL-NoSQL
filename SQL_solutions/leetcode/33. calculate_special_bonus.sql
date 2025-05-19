-- 1873. Calculate Special Bonus

# Write your MySQL query statement below
select employee_id,
CASE
    WHEN employee_id%2 = 0 then 0
    WHEN name like 'M%' then 0
    ELSE salary
END as bonus
from employees
order by employee_id
