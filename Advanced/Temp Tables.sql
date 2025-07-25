-- Temporary Tables : These are tables that are only visible to the session they are created in 

create temporary table temp_table
(first_name varchar(50),
last_name varchar(50),
favMovie varchar(100)

)
;



insert into temp_table
values('Fuad', 'Salam', 'ASM')
;

select *
from temp_table;

select *
from employee_salary;


create temporary table salary_over_50k
select *
from employee_salary
where salary >= 50000;

select *
from salary_over_50k