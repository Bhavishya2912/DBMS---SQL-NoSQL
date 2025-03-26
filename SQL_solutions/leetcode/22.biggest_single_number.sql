-- BIGGEST SINGLE NUMBER
-- https://leetcode.com/problems/biggest-single-number


select max(num) as num
from (
    select * from mynumbers
    group by num having count(num) = 1
) as num


-- OR APPROACH 2:

select coalesce(
    (select num 
    from mynumbers
    group by num
    having count(num) = 1
    order by num desc
    limit 1), NULL
)  as num 
