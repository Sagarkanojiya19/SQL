-- Group By

Select *
From employee_demographics;



Select gender, AVG(age),max(age),min(age),count(age)
From employee_demographics
group by gender;


Select occupation,avg(salary)
From employee_salary
group by occupation;



-- Order By
select *
from employee_demographics
order by age, gender;


-- Ordering by poisition
select *
from employee_demographics
order by 4;
