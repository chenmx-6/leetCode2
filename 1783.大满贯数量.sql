--
-- @lc app=leetcode.cn id=1783 lang=mysql
--
-- [1783] 大满贯数量
--

-- @lc code=start
# Write your MySQL query statement below
select a.player as player_id,b.player_name, count(*) as grand_slams_count
from(select Wimbledon as player from Championships
union all 
select Fr_open as player from Championships
union all 
select us_open as player from Championships
union all 
select au_open as player from Championships)a
left join Players b on a.player=b.player_id
group by a.player;

-- @lc code=end

