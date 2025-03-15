-- GROUP SOLD PRODUCTS BY THE DATE
-- https://leetcode.com/problems/group-sold-products-by-the-date

-- APPROACH:
-- 1. SELECT the sell_date, count distinct product, and group_concat the distinct products for each sell_date.
-- 2. Group the result by the sell_date.

select sell_date, 
        count(distinct product) as num_sold, 
        GROUP_CONCAT(distinct product order by product) as products
from activities
group by sell_date