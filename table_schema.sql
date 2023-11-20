---Creating tables---

---Employee Table---
DROP TABLE employees;

CREATE TABLE employees
(
	emp_no INTEGER NOT NULL,
	emp_title VARCHAR(20),
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

---Departments Table---
DROP TABLE departments;

CREATE TABLE departments
(
	dept_no VARCHAR(20),
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY(dept_no)
);
---Department Employees Table---
DROP TABLE dept_emp;

CREATE TABLE dept_emp
(
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	
);

---Department Manager Table---
DROP TABLE dept_manager;

CREATE TABLE dept_manager
(
	dept_no VARCHAR(10) NOT NULL,
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

---Salaries Table---
DROP TABLE salaries;

CREATE TABLE salaries
(
	emp_no INTEGER NOT NULL,
	salary INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

---Titles Table---
DROP TABLE titles;

CREATE TABLE titles
(
	title_id VARCHAR(20),
	title VARCHAR(20)
);





