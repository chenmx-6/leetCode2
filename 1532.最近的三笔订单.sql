--
-- @lc app=leetcode.cn id=1532 lang=mysql
--
-- [1532] 最近的三笔订单
--

-- @lc code=start
# Write your MySQL query statement below
select c.name as customer_name,c.customer_id,b.order_id,b.order_date
from Orders b left join Customers c on b.customer_id=c.customer_id
where order_id in(
    select order_id
from(select order_id,customer_id,ROW_NUMBER() OVER(
    PARTITION BY customer_id
    order by order_date desc
) as rownum
from Orders o
Order By o.customer_id,o.order_date desc) a
where a.rownum<=3
) order by customer_name,order_date desc
-- @lc code=end

