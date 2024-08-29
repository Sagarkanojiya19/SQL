-- WHERE clause
Select * From employee_salary
where salary >= 50000;


Select * From employee_demographics
where gender = 'Female';

Select * from employee_demographics
where birth_date > '1985-01-01'
OR NOt gender = 'Female';

-- LIke statements
-- % and _
Select * From employee_demographics
where first_name Like 'a%';

Select * From employee_demographics
where first_name Like 'a__';

Select * From employee_demographics
where birth_date Like '1989%';