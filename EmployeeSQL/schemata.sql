DROP TABLE dept_manager CASCADE
DROP TABLE employees CASCADE
DROP TABLE dept_manager CASCADE
DROP TABLE salaries CASCADE
DROP TABLE dept_emp CASCADE
DROP TABLE titles CASCADE;

-- Create Deparment table
CREATE TABLE departments (
     dept_no VARCHAR NOT NULL PRIMARY KEY,
     dept_name VARCHAR NOT NULL,
);
-- Create the Employee table
CREATE TABLE employees (
	emp_no INT NOT NULL,
	title_id VARCHAR NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date DATE NOT NULL,
	FOREIGN KEY (title_id) REFERENCES titles(title_id),
	PRIMARY KEY (emp_no)
);
-- Create the Dept_manager table
CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
    emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);
-- Create the Salaries table
CREATE TABLE salaries (
	emp_no INT,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
-- Create the Department Employees table
CREATE TABLE dept_emp (
	emp_no INT NOT Null,
	dept_no VARCHAR NOT Null,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no,dept_no)
);
-- Create the Titles table
CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR
);
-- Query for confirmation
SELECT * FROM departments;
