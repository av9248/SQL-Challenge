
SELECT 
	e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
FROM
	Employees e
JOIN
	Salaries s
ON 
	e.emp_no = s.emp_no;



SELECT  
    first_name,
    last_name,
    hire_date
FROM
    Employees
WHERE
    EXTRACT(YEAR FROM hire_date) = 1986;



SELECT 
	d.dept_no,
	d.dept_name,
	dm.emp_no,
	e.last_name,
	e.first_name
FROM
	Dept_manager dm
JOIN 
	Departments d
ON
	dm.dept_no = d.dept_no
JOIN
	Employees e
ON
	dm.emp_no = e.emp_no;



SELECT 
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM
	Employees e
JOIN
	Dept_emp de
ON
	e.emp_no = de.emp_no
JOIN
	Departments d
ON
	de.dept_no = d.dept_no
WHERE
	d.dept_name IN ('Sales','Development');




SELECT 
	first_name,
	last_name,
	sex
FROM
	Employees 
WHERE 
	first_name = 'Hercules' AND last_name LIKE 'B%';




SELECT 
	e.emp_no,
	e.last_name,
	e.first_name
FROM 
	Employees e
JOIN
	Dept_emp de
ON 
	e.emp_no = de.emp_no
JOIN 
	Departments d
ON
	de.dept_no = d.dept_no
WHERE
	d.dept_name = 'Sales';




SELECT 
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM
	Employees e
JOIN
	Dept_emp de
ON
	e.emp_no = de.emp_no
JOIN
	Departments d
ON
	de.dept_no = d.dept_no
WHERE
	d.dept_name IN ('Sales','Development');




SELECT
	last_name,
	COUNT(*) AS frequency
FROM
	Employees
GROUP BY
	last_name
ORDER BY
	frequency DESC;







