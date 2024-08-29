-- Limits & Aliasing

select *
From employee_demographics
Limit 3
;



select *
From employee_demographics
Limit 3,1
;

select *
From employee_demographics
Order By age desc
Limit 3
;
-- Aliasing

select gender,avg(age) as Avg_age
from employee_demographics
group by gender
Having Avg_age > 40;
;

select gender,avg(age) Avg_age
from employee_demographics
group by gender
Having Avg_age > 40;
;