-- Joins 
select * 
from employee_demographics;

select * 
from employee_salary;

select dem.employee_id, age,occupation 
from employee_demographics as dem
Inner join employee_salary as sal
	On dem.employee_id = sal.employee_id
;
-- Outer Joins
-- Left outer Join / Left Join
select *
from employee_demographics as dem
left join employee_salary as sal
	On dem.employee_id = sal.employee_id
;

-- Right outer Join / Right Join
select sal.employee_id, age , occupation,gender
from employee_demographics as dem
Right join employee_salary as sal
	On dem.employee_id = sal.employee_id
;
-- Cross Join
select *
from employee_demographics as dem
cross join employee_salary as sal
	On dem.employee_id = sal.employee_id
;

-- Self Join
select emp1.employee_id as emp_santa,
emp1.first_name as firs_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_santa,
emp2.first_name as firs_name_emp,
emp2.last_name as last_name_emp
from employee_salary as emp1
join employee_salary as emp2
	on emp1.employee_id + 1 = emp2.employee_id
    ;
;

-- JOing multiple table

select *
from employee_demographics as dem
Inner join employee_salary as sal
	On dem.employee_id = sal.employee_id
Inner join parks_departments pd
	On sal.dept_id = pd.department_id
;


select *
from parks_departments;