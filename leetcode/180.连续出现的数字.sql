--
-- @lc app=leetcode.cn id=180 lang=mysql
--
-- [180] 连续出现的数字
--
-- @lc code=start
# Write your MySQL query statement below
SELECT
    DISTINCT a.num AS ConsecutiveNums
FROM
    LOGS a,
    LOGS b,
    LOGS c
WHERE
    a.Id = b.Id -1
    AND b.Id = c.Id -1
    AND a.num = b.num
    AND b.num = c.num;

-- @lc code=end