--
-- @lc app=leetcode.cn id=627 lang=mysql
--
-- [627] 变更性别
--
-- @lc code=start
# Write your MySQL query statement below
UPDATE
    Salary
SET
    sex =(
        CASE
            sex
            WHEN 'm' THEN 'f'
            WHEN 'f' THEN 'm'
        END
    );

-- @lc code=end