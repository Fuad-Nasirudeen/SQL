-- where clause

select *
from employee_salary
where first_name = 'leslie';

select *
from employee_salary
where salary <= 50000;

select *
from employee_demographics
where birth_date > '1985-01-01';

#logical operators like and, or, not

select *
from employee_demographics
where (first_name = 'leslie' and age = 44) or age > 55
;


-- like statement
-- % and _
select *
from employee_demographics
where first_name like '%a%'

;


