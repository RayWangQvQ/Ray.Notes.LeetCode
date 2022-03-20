--
-- @lc app=leetcode.cn id=182 lang=mysql
--
-- [182] 查找重复的电子邮箱
--
-- @lc code=start
# Write your MySQL query statement below
-- 方法一：连表（自连接）
-- SELECT
--     DISTINCT a.Email
-- FROM
--     Person a
--     LEFT JOIN Person b ON a.Email = b.Email
-- WHERE
--     a.Id != b.Id;
-- 方法二：Group by
-- SELECT
--     Email
-- FROM
--     (
--         SELECT
--             Email,
--             count(Email) AS num
--         FROM
--             Person
--         GROUP BY
--             Email
--     ) temp
-- WHERE
--     num > 1;
-- 方法三：group by + having
SELECT
    Email
FROM
    Person
GROUP BY
    Email
HAVING
    count(Email) > 1;

-- @lc code=end

-- 一：164ms
-- 二：94ms
-- 三：103ms