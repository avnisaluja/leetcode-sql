# Write your MySQL query statement below



SELECT
    m.employee_id AS employee_id,
    m.name name,
    COUNT(e.employee_id) AS reports_count,
    ROUND(AVG(e.age)) AS average_age
FROM
    employees m
inner JOIN
    employees e ON m.employee_id = e.reports_to
GROUP BY
    m.employee_id
order by
m.employee_id;
