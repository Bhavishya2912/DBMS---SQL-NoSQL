-- Sales person
-- https://leetcode.com/problems/sales-person

select name
from salesperson
where sales_id not in (select distinct(sales_id)
from orders, company
where orders.com_id = company.com_id
and company.name = 'RED')