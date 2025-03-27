-- SWAP SALARY
-- https://leetcode.com/problems/swap-salary

UPDATE Salaries
SET
    sex = CASE
        WHEN sex = 'm' THEN 'f'
        ELSE 'm'
    END

-- OR APPROACH 2:

UPDATE Salaries
SET sex = if(sex='m', 'f', 'm')
