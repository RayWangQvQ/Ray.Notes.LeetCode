--
-- @lc app=leetcode.cn id=601 lang=mysql
--
-- [601] 体育馆的人流量
--
-- @lc code=start
# Write your MySQL query statement below
SELECT
    t2.id,
    t2.visit_date,
    t2.people
FROM
    (
        SELECT
            count(*) over (PARTITION BY t1.step) count,
            t1.id,
            t1.visit_date,
            t1.people
        FROM
            (
                SELECT
                    s2.id - row_number () over (
                        ORDER BY
                            s2.id
                    ) step,
                    s2.id,
                    s2.visit_date,
                    s2.people
                FROM
                    Stadium s2
                WHERE
                    s2.people >= 100
                ORDER BY
                    s2.id
            ) t1
    ) t2
WHERE
    t2.count >= 3
ORDER BY
    t2.id;

-- @lc code=end

-- https://leetcode-cn.com/problems/human-traffic-of-stadium/solution/row_numberfang-shi-jie-jue-lian-xu-xing-42uhh/