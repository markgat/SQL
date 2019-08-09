/* 1st Query*/
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees as e, salaries as s
WHERE e.emp_no = s.emp_no;

/* 2nd Query*/
SELECT * FROM employees
WHERE hire_date LIKE '1986%';

/* 3rd Query*/
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name,
e.first_name, m.from_date, m.to_date
FROM dept_manager as m, departments as d, employees as e
WHERE e.emp_no = m.emp_no AND d.dept_no = m.dept_no;

/* 4th Query*/
SELECT  e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments as d, employees as e, dept_emp as de
WHERE d.dept_no = de.dept_no AND e.emp_no = de.emp_no;

/* 5th Query*/
SELECT * FROM employees WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'

/* 6th Query*/
SELECT  e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments as d, employees as e, dept_emp as de
WHERE d.dept_no = de.dept_no AND e.emp_no = de.emp_no AND d.dept_name = 'Sales';

/* 7th Query*/
SELECT  e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments as d, employees as e, dept_emp as de
WHERE d.dept_no = de.dept_no AND e.emp_no = de.emp_no AND (d.dept_name = 'Sales'
OR d.dept_name = 'Development');

/* 8th Query*/
SELECT last_name, COUNT(last_name)  AS "Total employees" FROM employees
GROUP BY last_name
ORDER BY "Total employees" DESC;
