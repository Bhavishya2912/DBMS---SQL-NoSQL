-- Customers who never order
-- https://leetcode.com/problems/customers-who-never-order/

--APPROACH 1: WITHOUT JOINS
select name as Customers
from Custmers
where id not in (
    select customerId
    from Orders
)


-- APPROACH 2: USING JOINS
select c.name as Customers
from Customers c
left join orders o
on c.id = o.CustomerId
where o.Customerid is null