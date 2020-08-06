drop table employees, salaries, titles, dept_emp, dept_manager, departments


CREATE TABLE employees (
    emp_no int NOT NULL,
	empt_title_id varchar NOT NULL,
    birth_date date NOT NULL,
    first_name varchar NOT NULL,
    last_name varchar NOT NULL,
    sex varchar NOT NULL,
    hire_date date NOT NULL,
	PRIMARY KEY (emp_no));

SELECT * from employees;


CREATE TABLE departments (
	PRIMARY KEY (dept_no),
    dept_no varchar NOT NULL,
    dept_name varchar NOT NULL);

SELECT * from departments;


CREATE TABLE dept_emp (
    emp_no int NOT NULL,
	dept_no varchar NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

SELECT * from dept_emp;


CREATE TABLE dept_manager (
    dept_no varchar NOT NULL,
    emp_no int NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

SELECT * from dept_manager;


CREATE TABLE salaries (
    emp_no int NOT NULL,
	salary int NOT NULL,   
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

SELECT * from salaries;


CREATE TABLE titles (
	title_id varchar NOT NULL,
    title varchar NOT NULL);

SELECT * from titles;

