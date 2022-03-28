--
-- @lc app=leetcode.cn id=262 lang=mysql
--
-- [262] 行程和用户
--
-- @lc code=start
# Write your MySQL query statement below
SELECT
    t.request_at AS "Day",
    (
        round(
            sum(IF(t.status = 'completed', 0, 1)) / count(t.status),
            2
        )
    ) AS "Cancellation Rate"
FROM
    Trips t
    JOIN Users u1 ON (
        t.client_id = u1.users_id
        AND u1.banned = 'No'
    )
    JOIN Users u2 ON (
        t.driver_id = u2.users_id
        AND u2.banned = 'No'
    )
WHERE
    t.request_at >= '2013-10-01'
    AND t.request_at < '2013-10-04'
GROUP BY
    t.request_at;

-- @lc code=end