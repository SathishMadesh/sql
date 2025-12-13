-- String Functions

select length('skyfall');

-- refers and order by 2nd column

select first_name, length(first_name) 
from employee_demographics
order by 2 
;


select upper('sky');
select lower('SKY');

select first_name, upper(first_name)
from employee_demographics;


-- trim, left_trim, right_trim

select trim('        sky        ');
select ltrim('       sky       ');
select rtrim('        sky        ');


-- Substring

select first_name, 
left(first_name, 4),
right(first_name, 4),
substring(first_name,3,2),
birth_date,
substring(birth_date,6,2) as birth_month
from employee_demographics
;


-- Replace

select first_name, replace(first_name, 'a', 'z')
from employee_demographics;

-- Locate
select locate('x', 'Alexander');
select first_name, locate('an',first_name)
from employee_demographics;


-- Concadination

select first_name, last_name,
concat(first_name,' ',last_name) as full_name
from employee_demographics;

