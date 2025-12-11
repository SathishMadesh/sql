-- having vs where

select gender, avg(age)
from employee_demographics
group by gender
having avg(age) > 40;

select occupation, avg(salary)
from employee_salary
where occupation like "%manager%"
group by occupation
having avg(salary) >70000;

-- limit & aliasing

select * 
from employee_demographics
order by age desc
limit 3
;


-- Aliasing

select gender, avg(age) as Average_age
from employee_demographics
group by gender
having avg(age)>40