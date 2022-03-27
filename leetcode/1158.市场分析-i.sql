--
-- @lc app=leetcode.cn id=1158 lang=mysql
--
-- [1158] 市场分析 I
--
-- @lc code=start
# Write your MySQL query statement below
SELECT
    u.user_id AS "buyer_id",
    u.join_date,
    IFNULL(temp.num, 0) AS orders_in_2019
FROM
    Users u
    LEFT JOIN (
        SELECT
            o.buyer_id,
            count(o.buyer_id) AS num
        FROM
            Orders o
        WHERE
            year(o.order_date) = 2019
        GROUP BY
            buyer_id
    ) temp ON temp.buyer_id = u.user_id;

-- @lc code=end