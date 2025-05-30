-- 1907. Count Salary Categories



select "Low Salary" as category, count(income) as accounts_count
from accounts
where income < 20000

union all

select "Average Salary" as category, count(income) as accounts_count
from accounts
where income >= 20000 and income <= 50000

union all

select "High Salary" as category, count(income) as accounts_count
from accounts
where income > 50000