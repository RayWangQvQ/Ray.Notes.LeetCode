--
-- @lc app=leetcode.cn id=626 lang=mysql
--
-- [626] 换座位
--
-- @lc code=start
# Write your MySQL query statement below
SELECT
    (
        CASE
            WHEN s.id % 2 = 0 THEN s.id -1
            WHEN s.id != c.num THEN s.id + 1
            ELSE s.id
        END
    ) AS id,
    s.student
FROM
    Seat s
    JOIN (
        SELECT
            count(*) AS num
        FROM
            Seat
    ) c
ORDER BY
    id ASC;

-- @lc code=end
-- 题目歧义，其实是让select，不是update