drop table titles
create table titles(
	title_id varchar
	title varchar
	primary key (title_id)
);
select * from titles


drop table employees
create table employees(
	emp_no int,
	emp_title varchar,
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date date,
	primary key (emp_no),
	foreign key (emp_title) references titles(title_id)	
);
select * from employees


drop table departments
create table departments(
	dept_no varchar,
	dept_name varchar,
	primary key (dept_no)
);
select * from departments


drop table dept_emp
create table dept_emp(
	emp_no int,
	dept_no varchar,
	foreign key dept_no references departments(dept_no),
	foreign key emp_no references employees(emp_no),
	constraint PK_dept_emp primary key (emp_no, dept_no)
);
select * from dept_emp


drop table dept_manager
create table dept_manager(
	dept_no varchar,
	emp_no int,
	foreign key dept_no references departments(dept_no),
	foreign key emp_no references employees(emp_no),
	constraint PK_dep_manager primary key (dept_no, emp_no)
);
select * from dept_manager


drop table salaries
create table salaries(
	emp_no int,
	salary int,
	primary key (emp_no),
	foreign key (emp_no) references employees(emp_no)
);
select * from salaries