--
-- @lc app=leetcode.cn id=185 lang=mysql
--
-- [185] 部门工资前三高的所有员工
--
-- @lc code=start
# Write your MySQL query statement below
SELECT
    B.Name AS Department,
    A.Name AS Employee,
    A.Salary
FROM
    (
        SELECT
            DepartmentId,
            Name,
            Salary,
            DENSE_RANK() OVER (
                PARTITION by DepartmentId
                ORDER BY
                    Salary DESC
            ) AS ranking
        FROM
            Employee
    ) AS A
    left JOIN Department AS B ON A.DepartmentId = B.id
WHERE
    A.ranking <= 3;

-- @lc code=end

-- ROW_NUMBER()、RANK()、DENSE_RANK()的区别

-- +----------+--------+
-- |  Student |  Score |
-- +----------+--------+
-- | A        |   100  |
-- | B        |   100  |
-- | C        |    95  |
-- +----------+--------+

-- ROW_NUMBER()行号排序，无并列，连续
-- +-----+---------+-------+
-- | num | Student | Score |
-- +-----+---------+-------+
-- | 1   |  A      |  100  |
-- | 2   |  B      |  100  |
-- | 3   |  C      |   95  |
-- +-----+---------+-------+

-- RANK()排序，有并列，不连续
-- +-----+---------+-------+
-- | num | Student | Score |
-- +-----+---------+-------+
-- | 1   |  A      |  100  |
-- | 1   |  B      |  100  |
-- | 3   |  C      |   95  |
-- +-----+---------+-------+

-- DENSE_RANK()密集排序，有并列，连续
-- +-----+---------+-------+
-- | num | Student | Score |
-- +-----+---------+-------+
-- | 1   |  A      |  100  |
-- | 1   |  B      |  100  |
-- | 2   |  C      |   95  |
-- +-----+---------+-------+
