# Write your MySQL query statement below
SELECT 
  max(CASE 
    WHEN highest_Sal =2 THEN salary
    ELSE null
  END) as secondhighestsalary
FROM (
  SELECT salary, dense_RANK() OVER (ORDER BY salary DESC) AS highest_Sal
  FROM employee
) AS a
where highest_sal=2


