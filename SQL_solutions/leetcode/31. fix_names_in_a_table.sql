-- 1667. Fix Names in a Table


select user_id, concat(upper(substring(name,1,1)), lower(substring(name,2, length(name)-1))) as name
from users
order by user_id