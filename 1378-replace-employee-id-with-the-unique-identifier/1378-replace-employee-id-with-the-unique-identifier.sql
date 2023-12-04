# Write your MySQL query statement below
select employees.name,unique_id from employees left join EmployeeUNI on
employees.id=EmployeeUNI.id;