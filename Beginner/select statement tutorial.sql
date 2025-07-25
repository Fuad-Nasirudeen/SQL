select * 
from parks_and_recreation.employee_demographics;

select first_name, 
last_name, 
birth_date,
age, 
(age + 10)*10
from parks_and_recreation.employee_demographics;

# This is mysql practice 


select distinct gender
from parks_and_recreation.employee_demographics;