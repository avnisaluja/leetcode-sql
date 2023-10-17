# Write your MySQL query statement below


select e2.employee_id as employee_id  from employees e2 left join employees e1 on e2.manager_id=e1.employee_id
where e2.manager_id is not null and e1.employee_id is null and e2.salary<30000
order by employee_id asc;