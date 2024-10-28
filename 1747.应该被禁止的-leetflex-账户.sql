--
-- @lc app=leetcode.cn id=1747 lang=mysql
--
-- [1747] 应该被禁止的 Leetflex 账户
--

-- @lc code=start
# Write your MySQL query statement below
select a.account_id
from LogInfo a,LogInfo b
where a.account_id=b.account_id
and !(b.logout<a.login Or b.login>a.logout)
and a.ip_address!=b.ip_address
group by a.account_id
;

-- @lc code=end

