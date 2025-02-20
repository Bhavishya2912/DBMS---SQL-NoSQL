-- To find numbers that appear for 3 times consecutively
-- https://leetcode.com/problems/consecutive-numbers/


/* APPROACH :
Use three self-joins of the Logs table (L1, L2, and L3 as alias) to link each row with its immediate neighbors.
Consecutive IDs: The conditions L1.id = L2.id - 1 and L2.id = L3.id - 1 ensure that L1, L2, and L3 represent three consecutive rows in the table based on their id values.
Consecutive Numbers: The condition L1.num = L2.num AND L2.num = L3.num checks if the num value is the same across these three consecutive rows.
Use DISTINCT as only 3 are being considered here, and if 4th value occurs consecutively it should select distinct value.
*/


select DISTINCT L1.num as ConsecutiveNums
from Logs L1, Logs L2, Logs L3
WHERE L1.id = L2.id - 1
AND L2.id = L3.id - 1
AND L1.num = L2.num and L2.num = L3.num


-- APPROACH 2: USING LAG AND LEAD - (with CTE to simplify)
with subquery as (
    select 
        num,
        lead(num,1) over (ORDER BY id) as next_num,
        lag(num,1) over (ORDER BY id) as prev_num
    from Logs
)

SELECT DISTINCT num as ConsecutiveNums
from subquery
Where num = prev_num AND num = next_num