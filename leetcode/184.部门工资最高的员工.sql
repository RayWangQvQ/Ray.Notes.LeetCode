--
-- @lc app=leetcode.cn id=184 lang=mysql
--
-- [184] 部门工资最高的员工
--
-- @lc code=start
# Write your MySQL query statement below
-- 方法一：子查询
-- SELECT
--     d.name AS Department,
--     a.name AS Employee,
--     a.salary AS Salary
-- FROM
--     Employee a
--     LEFT JOIN Department d ON a.departmentId = d.id
-- WHERE
--     (
--         a.salary =(
--             SELECT
--                 max(b.salary)
--             FROM
--                 Employee b
--             WHERE
--                 b.departmentId = a.departmentId
--         )
--     );
-- 方法二：join
SELECT
    d.name AS Department,
    a.name AS Employee,
    a.salary AS Salary
FROM
    Employee a
    LEFT JOIN (
        SELECT
            e.departmentId,
            max(e.salary) AS maxSalary
        FROM
            Employee e
        GROUP BY
            e.departmentId
    ) b ON b.departmentId = a.departmentId
    LEFT JOIN Department d ON a.departmentId = d.id
WHERE
    a.salary = b.maxSalary;
-- 方法三：in
-- SELECT
--     Department.name AS 'Department',
--     Employee.name AS 'Employee',
--     Salary
-- FROM
--     Employee
--     LEFT JOIN Department ON Employee.DepartmentId = Department.Id
-- WHERE
--     (Employee.DepartmentId, Salary) IN (
--         SELECT
--             DepartmentId,
--             MAX(Salary)
--         FROM
--             Employee
--         GROUP BY
--             DepartmentId
--     );

-- @lc code=end

-- 其实②比③快
