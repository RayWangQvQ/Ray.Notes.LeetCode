--
-- @lc app=leetcode.cn id=176 lang=mysql
--
-- [176] 第二高的薪水
--
-- @lc code=start
# Write your MySQL query statement below
SELECT
    (
        SELECT
            DISTINCT salary
        FROM
            Employee
        ORDER BY
            salary DESC
        LIMIT
            1, 1
    ) AS SecondHighestSalary;

-- @lc code=end

-- limit 1,1 等价于 limit 1 OFFSET 1，意思是从index为1起取1行（index从0开始计算）
-- 第一个select是为了null情况
-- sql server 没有limit语法，需要使用top替代
