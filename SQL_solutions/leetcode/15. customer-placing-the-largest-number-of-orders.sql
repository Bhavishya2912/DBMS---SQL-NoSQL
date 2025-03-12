-- Customer Placing the Largest Number of Orders
-- https://leetcode.com/problems/customer-placing-the-largest-number-of-orders

/*
APPROACH:
-- 1. Group the orders by customer number.
-- 2. Count the number of orders for each customer.
-- 3. Order the results by the order count in descending order.
-- 4. Select the customer with the highest order count.
*/

select customer_number
from orders
group by customer_number
order by count(order_number) desc
limit 1
