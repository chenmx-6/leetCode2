--
-- @lc app=leetcode.cn id=603 lang=mysql
--
-- [603] 连续空余座位
--

-- @lc code=start
# Write your MySQL query statement below
select distinct a.seat_id
from Cinema a join Cinema b on abs(a.seat_id-b.seat_id)=1 and a.free=true and b.free=true
order by a.seat_id;
-- @lc code=end

