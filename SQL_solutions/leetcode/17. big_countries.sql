-- BIG COUNTRIES
-- https://leetcode.com/problems/big-countries

-- APPROACH:

-- retrieve the name, population, and area of countries
-- where the area is greater than or equal to 3,000,000 square kilometers 
-- or the population is greater than or equal to 25,000,000 people.

select name, population, area
from world
where area >= 3000000 or population >= 25000000