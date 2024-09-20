SELECT
	last_name,
	COUNT(*) AS frequency
FROM
	Employees
GROUP BY
	last_name
ORDER BY
	frequency DESC;