-- Case Statements

select first_name,
last_name,
Case
	when age <= 30 Then 'Young'
    when age between 31 and 50 Then 'Old'
    when age  > 50 Then "Death's Door"
End
from employee_demographics;

-- Pay Increase and Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- finance = 10 % Bonus



select first_name,last_name, salary,
case
	when salary < 50000 Then salary +(salary * 0.05)
	when salary > 50000 Then salary +(salary * 0.07)
	when dept_id = 6 then salary + (salary * 0.1)
end as new_salary
from employee_salary;
