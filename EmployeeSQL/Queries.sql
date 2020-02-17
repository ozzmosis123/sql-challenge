SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees e INNER JOIN salaries s
ON e.emp_no = s.emp_no
ORDER BY e.emp_no;

SELECT emp_no, last_name, first_name, hire_date
FROM employees
WHERE DATE_PART('year', hire_date) = 1986;

SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
FROM employees e INNER JOIN dept_manager m
ON e.emp_no = m.emp_no
INNER JOIN departments d
ON m.dept_no = d.dept_no;

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e INNER JOIN dept_employee de
ON e.emp_no = de.emp_no
INNER JOIN departments d
ON de.dept_no = d.dept_no;

SELECT last_name, first_name
FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments d INNER JOIN dept_employee de
ON d.dept_no = de.dept_no
AND d.dept_name = 'Sales'
INNER JOIN employees e
ON e.emp_no = de.emp_no;

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments d INNER JOIN dept_employee de
ON d.dept_no = de.dept_no
AND d.dept_name = 'Sales'
OR d.dept_name = 'Development'
INNER JOIN employees e
ON e.emp_no = de.emp_no;

SELECT last_name, count(*) AS last_name_count
FROM employees
GROUP BY last_name
ORDER BY last_name_count DESC;