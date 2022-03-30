SELECT x.*
FROM employee e
join (select *,
max(SALARY) over (partition by dept_name) as max_salary,
min(SALARY) over (partition by dept_name) as min_salary
FROM employee) x
on e.emp_ID = x.emp_ID
and (e.SALARY = x.max_salary or e.SALARY = x.min_salary)
order by x.DEPT_NAME, x.SALARY;