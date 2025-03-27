-- 1517. Find Users With Valid E-Mails
-- https://leetcode.com/problems/find-users-with-valid-e-mails

select *
from users
where mail regexp '^[a-zA-Z][a-zA-Z0-9._-]*@leetcode\\.com$'