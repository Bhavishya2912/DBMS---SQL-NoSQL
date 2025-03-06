-- TOP TRAVELLERS
-- https://leetcode.com/problems/top-travellers

/*
APPROACH:
1. Join the "users" and "rides" tables on the user_id column.
2. Group the result by the user's name.
3. Calculate the total distance traveled by each user by summing the distances from the "rides" table.
*/



select u.name, ifnull(sum(r.distance),0) as travelled_distance
from users u
left join rides r
on u.id = r.user_id
group by u.id
order by travelled_distance desc, name asc