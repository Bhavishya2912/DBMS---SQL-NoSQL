-- MORE THAN 5 SRUDENTS
-- https://leetcode.com/problems/classes-more-than-5-students


-- APPROACH: 

-- We first group the courses by class and count the number of students in each class.
-- Then,filter and select to include classes with count of students > 5.


select class
from courses
group by class
having count(student) > 5