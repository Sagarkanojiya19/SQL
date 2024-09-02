-- CTEs 

with CTE_Example(Gender, AVG_Sal, MAX_SAL, MIN_SAL, COUNT_SAL)  as
(
select gender,avg(salary) avg_sal,max(salary) max_sal,min(salary) min_sal,count(salary) count_sal
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id
group by gender
)
select * 
from CTE_Example
;


select avg(avg_sal)
from
(
select gender,avg(salary) avg_sal,max(salary) max_sal,min(salary) min_sal,count(salary) count_sal
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id
group by gender
) example_
;


with CTE_Example as
(
select gender, employee_id, birth_date
from employee_demographics 
where birth_date > '1985-01-01'
),
CTE_Example2 as
(
select employee_id,salary
from employee_salary
where salary > 50000
)

select * 
from CTE_Example cte1
join CTE_Example2 cte2
	on cte1.employee_id = cte2.employee_id
;
