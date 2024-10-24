--
-- @lc app=leetcode.cn id=1965 lang=mysql
--
-- [1965] 丢失信息的雇员
--

-- @lc code=start
# Write your MySQL query statement below
select employee_id
from Employees
where employee_id not in(select employee_id from Salaries)
union all 
select employee_id
from Salaries
where employee_id not in(select employee_id from Employees)
order by employee_id asc
-- @lc code=end

