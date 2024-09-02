-- Unions
-- Bad Practice
select age,gender
from employee_demographics
Union 
select first_name,last_name
from employee_salary;

-- Data type should be same of united columns
select first_name,last_name
from employee_demographics
Union -- Union distinct By default
select first_name,last_name
from employee_salary;

select first_name,last_name
from employee_demographics
Union all -- Gives all the values whether it's duplicate or not
select first_name,last_name
from employee_salary;

-- Labeling
select first_name, last_name, 'Old Man' As Label
From employee_demographics
where age > 40 and gender = 'Male'
union 
select first_name, last_name, 'Old Lady' As Label
From employee_demographics
where age > 40 and gender = 'Female'
union
select first_name, last_name, 'Highly Paid Employee' As Label
From employee_salary
where salary > 70000
order by first_name,last_name;