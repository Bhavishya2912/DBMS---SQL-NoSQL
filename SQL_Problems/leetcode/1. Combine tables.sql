-- COMBINE TWO TABLES
-- https://leetcode.com/problems/combine-two-tables/


-- Approach: 
--   As the problem is to combine the first and second table, with main focus on the first table (persons) - as we need to show address for each person , and if address not present return NULL.
--   Hence it's better to use left join with more focus on table (Persons) on Address.

  
SELECT p.firstName, p.lastName, a.city, a.state 
FROM Person p
LEFT JOIN Address a
ON p.personId = a.personId
