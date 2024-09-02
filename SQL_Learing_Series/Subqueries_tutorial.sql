-- Subqueries

select * 
from employee_demographics
where employee_id IN 
	(select employee_id  -- Operand should contain one column
    from employee_salary
    where dept_id = 1)
;


Select first_name, salary, 
(select avg(salary)
from employee_salary)
from employee_salary;

select avg(max_age)
From
(select gender,
avg(age) avg_age,
 max(age) max_age,
 min(age) min_age
 , count(age) 
from employee_demographics
group by gender) as Agg_table
;
