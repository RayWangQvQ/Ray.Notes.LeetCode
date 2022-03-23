--
-- @lc app=leetcode.cn id=178 lang=mysql
--
-- [178] 分数排名
--
-- @lc code=start
# Write your MySQL query statement below
SELECT
    b.score,
    (
        SELECT
            count(distinct score)
        FROM
            Scores a
        WHERE
            a.score >= b.score
    ) AS "rank"
FROM
    Scores b
ORDER BY
    b.score desc;

-- @lc code=end