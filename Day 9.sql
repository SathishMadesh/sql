-- Window function


-- simple group by function
select gender, avg(salary)
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender;


-- using window function

select dem.first_name, dem.last_name, avg(salary) over(partition by gender)
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
;


select dem.first_name, gender, dem.employee_id,
sum(salary) over(partition by gender order by dem.employee_id) as roling_total
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
;


select dem.employee_id, dem.first_name, gender, salary,
row_number() over(order by salary desc) as row_num,
rank() over(order by salary desc) as rank_num,
dense_rank() over(order by salary desc) as dense_rank_num
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
;