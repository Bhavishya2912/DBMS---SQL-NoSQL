-- Nth HIGHEST SALARY (Using functions)
-- https://leetcode.com/problems/nth-highest-salary/


SELECT DISTINCT salary
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET N-1;