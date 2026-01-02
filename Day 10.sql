-- CTEs  - Common Table Expresion

-- with is a key word for initializing CTEs


with cte_example as
(
select gender, avg(salary), max(salary), min(salary), count(salary)
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender
)
select * 
from cte_example
;