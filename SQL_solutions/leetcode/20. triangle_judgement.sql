-- TRIANGLE JUDGEMENT
-- https://leetcode.com/problems/triangle-judgement

-- Approach:

select *, if(x+y>z and y+z > x and x+z>y, "Yes", "No") as triangle
from triangle

-- or 


select *,CASE
            when x<0 or y<0 or z<0 then 'No'
            WHEN x + y > z AND y + z > x AND z + x > y THEN 'Yes'
            else 'No'
        END as triangle
from triangle