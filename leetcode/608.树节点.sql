--
-- @lc app=leetcode.cn id=608 lang=mysql
--
-- [608] 树节点
--
-- @lc code=start
# Write your MySQL query statement below
SELECT
    id,
    'Root' AS TYPE
FROM
    tree
WHERE
    p_id IS NULL
UNION
SELECT
    id,
    'Leaf' AS TYPE
FROM
    tree
WHERE
    id NOT IN (
        SELECT
            DISTINCT p_id
        FROM
            tree
        WHERE
            p_id IS NOT NULL
    )
    AND p_id IS NOT NULL
UNION
SELECT
    id,
    'Inner' AS TYPE
FROM
    tree
WHERE
    id IN (
        SELECT
            DISTINCT p_id
        FROM
            tree
        WHERE
            p_id IS NOT NULL
    )
    AND p_id IS NOT NULL
ORDER BY
    id;

-- @lc code=end