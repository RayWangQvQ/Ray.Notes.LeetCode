--
-- @lc app=leetcode.cn id=620 lang=mysql
--
-- [620] 有趣的电影
--
-- @lc code=start
# Write your MySQL query statement below
SELECT
    *
FROM
    cinema
WHERE
    description != 'boring'
    AND (id % 2 != 0)
ORDER BY
    rating DESC;

-- @lc code=end