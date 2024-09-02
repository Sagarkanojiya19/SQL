-- Window Functions

select gender, avg(salary) avg_salary
from employee_demographics dem
join employee_salary sal on dem.employee_id = sal.employee_id
group by gender;


select dem.first_name ,dem.last_name, 
avg(salary) Over(partition by gender)
from employee_demographics dem
join employee_salary sal on dem.employee_id = sal.employee_id
;


select dem.first_name ,dem.last_name,dem.gender,sal.salary,
sum(salary) Over(partition by gender order by dem.employee_id) as Rolling_total
from employee_demographics dem
join employee_salary sal on dem.employee_id = sal.employee_id
;




select dem.employee_id,dem.first_name ,dem.last_name,dem.gender,sal.salary,
row_number() over( partition by gender order by dem.employee_id desc) row_num,
rank() over( partition by gender order by dem.employee_id  Desc) rank_num,
dense_rank() over( partition by gender order by dem.employee_id  Desc) dens_rank
from employee_demographics dem
join employee_salary sal on dem.employee_id = sal.employee_id
;


