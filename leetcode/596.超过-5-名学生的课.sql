--
-- @lc app=leetcode.cn id=596 lang=mysql
--
-- [596] 超过5名学生的课
--
-- @lc code=start
# Write your MySQL query statement below
-- 方法一
-- SELECT
--     class
-- FROM
--     (
--         SELECT
--             class,
--             count(*) AS num
--         FROM
--             Courses
--         GROUP BY
--             class
--     ) temp
-- WHERE
--     num >= 5;
-- 方法二 ：
SELECT
    class
FROM
    Courses
GROUP BY
    class
HAVING
    count(student) >= 5;

-- @lc code=end

-- group by + having 可以替代子查询
