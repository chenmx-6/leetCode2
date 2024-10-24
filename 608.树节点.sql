--
-- @lc app=leetcode.cn id=608 lang=mysql
--
-- [608] 树节点
--

-- @lc code=start
# Write your MySQL query statement below
select id,(CASE when p_id is null then 'Root' when id not in(select distinct b.p_id from Tree b where b.p_id is not null) then'Leaf' else 'Inner'end) as type
from Tree  ;
-- @lc code=end

