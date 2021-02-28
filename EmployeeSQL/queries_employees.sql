--1. 
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees, salaries
where employees.emp_no = salaries.emp_no;


--2. 
select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';


--3.
select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from departments, dept_manager, employees
where dept_manager.dept_no = departments.dept_no


--4.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees, departments


--5.
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%'


--6.
select employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
from ((dept_emp 
inner join employees on employees.emp_no = dept_emp.emp_no) 
inner join departments on departments.dept_no = dept_emp.dept_no)
where dept_emp.dept_no = 'd007'


--7.
select employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
from ((dept_emp 
inner join employees on employees.emp_no = dept_emp.emp_no) 
inner join departments on departments.dept_no = dept_emp.dept_no)
where dept_emp.dept_no = 'd007' or dept_emp.dept_no = 'd005'


--8.
SELECT last_name, COUNT(emp_no)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;