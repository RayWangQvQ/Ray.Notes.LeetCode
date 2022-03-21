--
-- @lc app=leetcode.cn id=197 lang=mysql
--
-- [197] 上升的温度
--
-- @lc code=start
# Write your MySQL query statement below
-- 方法一：
SELECT
    w1.id
FROM
    Weather w1
    LEFT JOIN Weather w2 
    ON w1.recordDate = date_add(w2.recordDate, interval 1 day)
WHERE
    w1.Temperature > w2.Temperature;

-- 方法二：
-- SELECT
--     w1.id
-- FROM
--     Weather w1
--     LEFT JOIN Weather w2 
--     ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
-- WHERE
--     w1.Temperature > w2.Temperature;

-- @lc code=end

方法一：
14/14 cases passed (399 ms)
Your runtime beats 90.78 % of mysql submissions
Your memory usage beats 100 % of mysql submissions (0 B)

方法二：
14/14 cases passed (538 ms)
Your runtime beats 23.62 % of mysql submissions
Your memory usage beats 100 % of mysql submissions (0 B)