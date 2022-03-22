--
-- @lc app=leetcode.cn id=1179 lang=mysql
--
-- [1179] 重新格式化部门表
--
-- @lc code=start
# Write your MySQL query statement below
SELECT
    id,
    max(
        CASE
            MONTH
            WHEN 'Jan' THEN revenue
        END
    ) AS Jan_Revenue,
    max(
        CASE
            MONTH
            WHEN 'Feb' THEN revenue
        END
    ) AS Feb_Revenue,
    max(
        CASE
            MONTH
            WHEN 'Mar' THEN revenue
        END
    ) AS Mar_Revenue,
    max(
        CASE
            MONTH
            WHEN 'Apr' THEN revenue
        END
    ) AS Apr_Revenue,
    max(
        CASE
            MONTH
            WHEN 'May' THEN revenue
        END
    ) AS May_Revenue,
    max(
        CASE
            MONTH
            WHEN 'Jun' THEN revenue
        END
    ) AS Jun_Revenue,
    max(
        CASE
            MONTH
            WHEN 'Jul' THEN revenue
        END
    ) AS Jul_Revenue,
    max(
        CASE
            MONTH
            WHEN 'Aug' THEN revenue
        END
    ) AS Aug_Revenue,
    max(
        CASE
            MONTH
            WHEN 'Sep' THEN revenue
        END
    ) AS Sep_Revenue,
    max(
        CASE
            MONTH
            WHEN 'Oct' THEN revenue
        END
    ) AS Oct_Revenue,
    max(
        CASE
            MONTH
            WHEN 'Nov' THEN revenue
        END
    ) AS Nov_Revenue,
    max(
        CASE
            MONTH
            WHEN 'Dec' THEN revenue
        END
    ) AS Dec_Revenue
FROM
    Department
GROUP BY
    id;

-- @lc code=end