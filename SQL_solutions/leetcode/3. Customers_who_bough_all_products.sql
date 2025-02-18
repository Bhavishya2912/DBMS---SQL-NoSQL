-- Customers who bought all products
-- https://leetcode.com/problems/customers-who-bought-all-products/

/* APPROACH:
  - Given twi tables Customer and Products. It is mentioned that customers table van have duplicate values, i.e one customer can have multiple product purchases.
  - Task is to find the customers who bought all purchases.
  - hence, need to find if count of distinct product keys in customers table (products bougth by specific customer) is equal to count of all products in product table.
*/

select customer_id 
from Customer
group by customer_id
having count(distinct(product_key)) = (select count(*) from Product);
