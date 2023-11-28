# Write your MySQL query statement below


SELECT
    sell_date,
    COUNT(distinct product) AS num_sold,
    CONCAT_WS(', ', GROUP_CONCAT(distinct product)) as products
FROM
    activities
GROUP BY
    sell_date;
