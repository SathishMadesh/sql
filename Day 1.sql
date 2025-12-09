select *
from employee_demographics;

select first_name, last_name, age
from employee_demographics;

select distinct gender
from employee_demographics;


-- WHERE CLASS

SELECT *
FROM employee_demographics 
WHERE age=61;


select * 
from employee_salary;

select first_name, last_name, salary
from employee_salary
where salary>=50000;

select *
from employee_salary
where first_name = 'Ben';


-- LOGICAL OPERATORS => AND OR NOT

SELECT *
FROM employee_demographics
WHERE age >= 40
AND gender = 'Male';

select *
from employee_demographics
where (first_name = 'Tom' and age = '36') or age>40;


-- LIKE  Statement
select *
from employee_demographics
where first_name like 'a%';

select *
from employee_demographics
where first_name like '%s';

select *
from employee_demographics
where first_name like 'a___%';


 
