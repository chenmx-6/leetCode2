--
-- @lc app=leetcode.cn id=1350 lang=mysql
--
-- [1350] 院系无效的学生
--

-- @lc code=start
# Write your MySQL query statement below
select id,name
from Students
where department_id not in(select id from Departments)
-- @lc code=end

