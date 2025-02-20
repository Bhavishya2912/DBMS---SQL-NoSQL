-- DUPLICATE EMAIL 
-- https://leetcode.com/problems/duplicate-emails

-- APPROACH 1 :
-- We first group the same emails from the column together.
-- Then we check for any email that appears more than once in this group.

select email
from Person
group by email
having count(email) > 1


-- APPROACH 2 :
select email
from (
    select email, count(email) as c
    from Person
    group by email
)
where c > 1;