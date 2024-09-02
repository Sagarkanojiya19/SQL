-- Temporary Tables

-- First way to create a temp table
create temporary table temp_table
(first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(100)
);

select * 
from temp_table;

Insert into temp_table
Values('Alex','Freberg','Lord Of the Rings: The Tow Towers');

select *
from temp_table;

-- Second way to create a temp table

select * 
from employee_salary;

create temporary Table salary_over_70k
select *
from employee_salary
where salary >= 70000;

select *
from salary_over_70k;