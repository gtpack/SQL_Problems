Select emp_ID, emp_NAME, DEPT_NAME, Salary
FROM (
	Select *,
    row_number() OVER (order by emp_ID desc) as rn
    FROM employee e) x
Where x.rn = 2;
    
    