--
-- @lc app=leetcode.cn id=1495 lang=mysql
--
-- [1495] 上月播放的儿童适宜电影
--

-- @lc code=start
# Write your MySQL query statement below
select distinct c.title as'TITLE'
from TVProgram t
left join Content c
on t.content_id=c.content_id
where t.program_date like'%2020-06%'
and c.Kids_content='Y'
and c.content_type='Movies';
-- @lc code=end


