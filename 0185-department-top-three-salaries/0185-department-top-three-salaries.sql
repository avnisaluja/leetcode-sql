

SELECT Department,Employee,Salary FROM (
  SELECT 
    employee.salary AS salary,
    Department.name AS Department,
    employee.name AS Employee,
    DENSE_RANK() OVER (PARTITION BY Department.name ORDER BY employee.salary DESC) AS salary_rank
  FROM employee
  INNER JOIN department ON employee.departmentid = Department.id
) AS a
where salary_rank in (1,2,3)


