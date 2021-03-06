--Data Analysis

--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex,
salaries.salary
FROM employees
INNER JOIN salaries on
employees.emp_no = salaries.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.hire_date
From employees
WHERE hire_date > '1985-12-31'
AND hire_date < '1987-01-01';

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dept_manager.dept_no, departments.dept_name,dept_manager.emp_no,employees.last_name,employees.first_name
From dept_manager
INNER JOIN departments on 
dept_manager.dept_no = departments.dept_no
INNER Join employees on
dept_manager.emp_no = employees.emp_no

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees.emp_no,employees.last_name,employees.first_name,departments.dept_name
FROM employees
INNER JOIN dept_manager on
employees.emp_no = dept_manager.emp_no
INNER JOIN departments on
dept_manager.dept_no = departments.dept_no

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM Employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employees.emp_no,employees.last_name,employees.first_name,departments.dept_name
FROM employees
JOIN dept_emp on
employees.emp_no = dept_emp.emp_no
INNER JOIN departments on
dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales';

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.emp_no,employees.last_name,employees.first_name,departments.dept_name
FROM employees
JOIN dept_emp on
employees.emp_no = dept_emp.emp_no
INNER JOIN departments on
dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales' or dept_name = 'Development';

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name)
FROM Employees
GROUP BY last_name
ORDER BY count(last_name)
desc;