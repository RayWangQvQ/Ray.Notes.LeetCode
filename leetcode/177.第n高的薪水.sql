--
-- @lc app=leetcode.cn id=177 lang=mysql
--
-- [177] 第N高的薪水
--
-- @lc code=start
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT BEGIN
SET
  N := N -1;

RETURN (
  # Write your MySQL query statement below.
  SELECT
    DISTINCT salary
  FROM
    Employee
  ORDER BY
    salary DESC
  LIMIT
    N, 1
);
END

END -- @lc code=end