-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s ON
s.emp_no = e.emp_no;


-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';


-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM dept_manager as m
INNER JOIN departments as d ON
d.dept_no = m.dept_no
INNER JOIN employees as e ON
e.emp_no = m.emp_no;


-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT  m.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as m
INNER JOIN departments as d ON
d.dept_no = m.dept_no
INNER JOIN employees as e ON
e.emp_no = m.emp_no;


-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%';


-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT  m.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as m
INNER JOIN employees as e ON 
e.emp_no = m.emp_no
INNER JOIN departments as d ON
d.dept_no = m.dept_no
WHERE d.dept_name = 'Sales';


-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT  m.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as m
INNER JOIN employees as e ON
e.emp_no = m.emp_no
INNER JOIN departments as d ON
d.dept_no = m.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';


--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS "Last Name Count"
FROM employees
GROUP BY last_name
ORDER BY "Last Name Count" DESC;



