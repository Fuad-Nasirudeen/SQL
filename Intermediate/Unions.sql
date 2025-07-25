select first_name, last_name
from employee_demographics
union distinct
	select first_name, last_name
    from employee_salary;
    
select first_name, last_name, 'oldM' as Label
from employee_demographics
where age > 40 and gender = 'male'
union
select first_name, last_name, 'oldL' as Label
from employee_demographics
where age > 40 and gender = 'female'
union
select first_name, last_name, 'exp' as Label
from employee_salary
where salary > 70000
order by first_name, last_name
;