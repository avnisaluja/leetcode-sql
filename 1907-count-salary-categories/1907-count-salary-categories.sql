# Write your MySQL query statement below
WITH Categories AS (
  SELECT 'Low Salary' AS category
  UNION ALL
  SELECT 'Average Salary'
  UNION ALL
  SELECT 'High Salary'
)
SELECT c.category, COUNT(a.income) AS accounts_count
FROM Categories c
LEFT JOIN accounts a ON
  (c.category = 'Low salary' AND a.income < 20000) OR
  (c.category = 'Average salary' AND a.income >= 20000 and a.income <= 50000) OR
  (c.category = 'High salary' AND a.income > 50000)
GROUP BY c.category
ORDER BY accounts_count desc;




  

    