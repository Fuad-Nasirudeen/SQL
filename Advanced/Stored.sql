-- stored procedure : ways of saving a sql code for reuse 




create procedure large_salaries()
select*
from employee_salary
where salary >= 50000
;

call large_salaries();

delimiter $$
create procedure large_salaries3()
begin
	select*
	from employee_salary
	where salary >= 50000
	;
	select*
	from employee_salary
	where salary >= 10000
	;

end $$

delimiter ;

call new_procedure();




-- parameter
delimiter $$
create procedure large_salaries4(id int)
begin
	select salary
	from employee_salary
	where employee_id = id
	;
end $$

delimiter ;

call large_salaries4(1)