-- joins

select *
from employee_demographics;

select *
from employee_salary;


select dem.employee_id, age, occupation 
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id

;
-- outer joins    
    
select * 
from employee_demographics as dem
right join employee_salary as sal
	on dem.employee_id = sal.employee_id    

;
-- self join - a join that ties a table to itself

select emp1.employee_id ,
emp1.first_name ,
emp1.last_name ,

emp2.first_name as secret_santa_firstname,
emp2.last_name as secret_santa_lastname
from employee_salary emp1
join employee_salary emp2
	on emp1.employee_id + 1 = emp2.employee_id


;
-- joining multiples tables together

select * 
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
inner join parks_departments pd
	on sal.dept_id = pd.department_id

;
select *
from parks_departments   