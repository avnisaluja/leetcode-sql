# Write your MySQL query statement below
select  person_name from (SELECT 
  *,
  SUM(weight) OVER (ORDER BY turn ASC) AS cumulative_sum,
  rank() over(order by turn asc) as rnk
FROM  queue ) as a
where cumulative_sum <=1000
order by rnk desc
limit 1;