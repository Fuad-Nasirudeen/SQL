-- ctes (common table expressions) : Used to define a subquery block you can reference in the main query

with CTE_example (Gen, AvgS, Max, Min, Count) as 
(
select gender, avg(salary) avgsal, max(salary) maxsal, min(salary) minsal, count(salary) countsal
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
    
group by gender  

)

select *
from CTE_example
;


select avg(avgsal)
from (
select gender, avg(salary) avgsal, max(salary) maxsal, min(salary) minsal, count(salary) countsal
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
    
group by gender  

) example_subquery
;


with CTE_example as 
(
select gender, employee_id, birth_date
from employee_demographics 
where birth_date > '1985-01-01'
),
CTE_example2 as
(select employee_id, salary
from employee_salary
where salary > 50000

)
select *
from CTE_example
join CTE_example2
	on CTE_example.employee_id = CTE_example2.employee_id


;