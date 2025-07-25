select first_name, last_name, age,
case 
	when age <= 40 then 'young'
    when age between 41 and 60 then 'old'
    when age > 60 then 'superold'
end  as age_desc
from employee_demographics;





select first_name, last_name, salary, dept_id,
case
	when salary < 50000 then salary + (salary*0.05)
	when salary > 50000 then salary + (salary*0.07)
    when salary = 50000 then salary * 1
end as payrise,
case
	when dept_id = 6 then salary * .10
	when dept_id != 6 then salary * 0
end as bonus


from employee_salary;



