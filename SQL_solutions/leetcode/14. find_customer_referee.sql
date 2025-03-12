-- FIND CUSTOMER REFEREE
-- https://leetcode.com/problems/find-customer-referee/

-- APPROACH: 
-- To select names of customeres where referee_id is null or != 2


-- SQL Query

select name 
from customer 
where referee_id != 2 or referee_id is null