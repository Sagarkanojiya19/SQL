-- Stored Procedures


select * 
from employee_salary
where salary >= 50000;


Create procedure large_salaries()
select * 
from employee_salary
where salary >= 50000;

call large_salaries();

Delimiter $$
Create procedure large_salaries2()
Begin
	select * 
	from employee_salary
	where salary >= 50000;
	select * 
	from employee_salary
	where salary >= 10000;
end $$
Delimiter ;
call large_salaries2();

Delimiter $$
Create procedure large_salaries3(emp_id int)
Begin
	select salary 
	from employee_salary
	where employee_id = emp_id;
end $$
Delimiter ;

call large_salaries3(1);





