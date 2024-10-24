--
-- @lc app=leetcode.cn id=613 lang=mysql
--
-- [613] 直线上的最近距离
--

-- @lc code=start
# Write your MySQL query statement below
select  min(c.distance) as shortest
from(
    select abs(a.x-b.x) as distance
from Point a join Point b
) c
where c.distance!=0
;
-- @lc code=end

