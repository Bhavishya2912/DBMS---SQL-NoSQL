-- EMPLOYEE BONUS
-- https://leetcode.com/problems/employee-bonus

-- APPROACH
--   - Use a LEFT JOIN to combine data from both tables, ensuring all employees are included, even those without bonuses (NULL for without bonus).
--   - Filter the results to include only employees with a bonus less than 1000 or no bonus (NULL).


SELECT name, bonus
FROM Employee e
LEFT JOIN Bonus b
ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus is NULL
