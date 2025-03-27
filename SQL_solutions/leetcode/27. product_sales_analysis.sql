-- https://leetcode.com/problems/product-sales-analysis-i


select p.product_name, s.year, s.price
from sales s, product p
where s.product_id = p.product_id