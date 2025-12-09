
-- Group By

select * 
from employee_demographics;

select gender, avg(age)
from employee_demographics
group by gender;

select *
from employee_salary;

select salary, occupation
from employee_salary
group by salary, occupation;

select occupation
from employee_salary
group by occupation;


-- MAX(), MIN() and COUNT()

select gender, avg(age), MAX(age), MIN(age), COUNT(age)
from employee_demographics
group by gender;

-- ORDER BY

select *
from employee_demographics
order by first_name asc;

select *
from employee_demographics
order by first_name desc;

select *
from employee_demographics
order by gender, age desc;

