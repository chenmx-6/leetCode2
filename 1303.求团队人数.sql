--
-- @lc app=leetcode.cn id=1303 lang=mysql
--
-- [1303] 求团队人数
--

-- @lc code=start
# Write your MySQL query statement below

select a.employee_id,count(*) as team_size
from employee a,employee b
where a.team_id=b.team_id
group by employee_id;
-- @lc code=end

