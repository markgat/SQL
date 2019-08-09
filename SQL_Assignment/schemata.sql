CREATE TABLE departments(
	dept_no VARCHAR(50) PRIMARY KEY,
	dept_name VARCHAR(100) NOT NULL
);
	
CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	birth_date VARCHAR(10),
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	gender VARCHAR(1),
	hire_date VARCHAR(10)
);
	
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(50),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	from_date VARCHAR(10),
	to_date VARCHAR(10)
);

ALTER TABLE dept_emp
  ADD id SERIAL PRIMARY KEY;
  
CREATE TABLE dept_manager(
	dept_no VARCHAR(50),
	emp_no INT,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	from_date VARCHAR(10),
	to_date VARCHAR(10)
);

ALTER TABLE dept_manager
  ADD id SERIAL PRIMARY KEY;
	
CREATE TABLE salaries(
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INT,
	from_date VARCHAR(10),
	to_date VARCHAR(10)
);

ALTER TABLE salaries
  ADD id SERIAL PRIMARY KEY;

CREATE TABLE titles(
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	title VARCHAR(100),
	from_date VARCHAR(10),
	to_date VARCHAR(10)
);

ALTER TABLE titles
  ADD id SERIAL PRIMARY KEY;