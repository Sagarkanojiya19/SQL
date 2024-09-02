-- String Function

select length('Skyfall');


select first_name,length(first_name)
from employee_demographics
Order By 2;


select upper('sky');
select Lower('sky');
select first_name,upper(first_name)
from employee_demographics
Order By 2;


-- Trim

select Trim('               sky            ');

-- left Trim  will remove all the space of left side
select Ltrim('               sky            ');

-- Right Trim will remove all the space of Right side
select Rtrim('               sky            ');


-- Left & Right
select first_name, 
Left(first_name,4), -- 
Right(first_name,4)
From employee_demographics;

-- Substring
select first_name,birth_date,
substring(birth_date,6,2) as birth_month
from employee_demographics;


-- Replace case sensitive
select first_name, replace(first_name,'a','@')
from employee_demographics;

-- Locate  case insensitive
select first_name , Locate('an',first_name)
from employee_demographics;


select locate('a','Sagar'); 




-- Concate
select concat('Sagar',' ','Kanojiya');

select first_name,last_name,Upper(concat(first_name,' ',last_name)) as full_name
from employee_demographics,employee_salary;




