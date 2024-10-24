--
-- @lc app=leetcode.cn id=534 lang=mysql
--
-- [534] 游戏玩法分析 III
--

-- @lc code=start
# Write your MySQL query statement below
select a.player_id,a.event_date,sum(b.games_played) as games_played_so_far
from Activity a , Activity b
where b.event_date<=a.event_date
and a.player_id=b.player_id
group by a.player_id,a.event_date;
-- @lc code=end

