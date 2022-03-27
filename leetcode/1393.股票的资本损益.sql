--
-- @lc app=leetcode.cn id=1393 lang=mysql
--
-- [1393] 股票的资本损益
--
-- @lc code=start
# Write your MySQL query statement below
SELECT
    stock_name,
    sum(
        CASE
            WHEN operation = "Buy" THEN - price
            ELSE price
        END
    ) AS capital_gain_loss
FROM
    Stocks
GROUP BY
    stock_name;

-- @lc code=end