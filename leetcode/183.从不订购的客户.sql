--
-- @lc app=leetcode.cn id=183 lang=mysql
--
-- [183] 从不订购的客户
--
-- @lc code=start
# Write your MySQL query statement below
-- 方法一：左联
SELECT
    c.Name AS Customers
FROM
    Customers c
    LEFT JOIN Orders o ON c.Id = o.CustomerId
WHERE
    o.Id IS NULL;
-- 方法二：not in
-- SELECT
--     c.Name AS Customers
-- FROM
--     Customers c
-- WHERE
--     c.Id NOT IN (
--         SELECT
--             CustomerId
--         FROM
--             Orders
--     );

-- @lc code=end

-- 左联应该比not in性能好