--
-- @lc app=leetcode.cn id=1501 lang=mysql
--
-- [1501] 可以放心投资的国家
--

-- @lc code=start
# Write your MySQL query statement below

select c.name as country
from Country c,Person p,(select caller_id,duration from Calls
union all
select callee_id,duration from Calls
) ca
where c.country_code=left(p.phone_number,3)
and p.id=ca.caller_id
group by c.name
having avg(ca.duration)>(select avg(duration) from calls)
;



-- @lc code=end

