-- Having vs where

Select gender , avg(age)
From employee_demographics
group by gender
having avg(age) > 40
;

select occupation, avg(salary)
From employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary) > 75000
;
