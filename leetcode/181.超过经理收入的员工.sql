--
-- @lc app=leetcode.cn id=181 lang=mysql
--
-- [181] 超过经理收入的员工
--
-- @lc code=start
# Write your MySQL query statement below
-- 方法一：子查询

-- SELECT
--      name AS Employee
-- FROM
--      Employee a
-- WHERE
--      a.salary > (
--           SELECT
--                salary
--           FROM
--                Employee
--           WHERE
--                id = a.managerId
--      );

-- 方法二，连表查（自己连自己）

SELECT
     a.NAME AS Employee
FROM
     Employee AS a
     JOIN Employee AS b ON a.ManagerId = b.Id
     AND a.Salary > b.Salary;

-- 一：1040ms
-- 二：399ms
-- 连表比较好
-- 一比二慢，是因为这样是遍历每一行，然后每一行都再去查一遍他的经理。
-- @lc code=end