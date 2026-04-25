-- 1. Select all employees
select * from employees 
order by employee_id asc;

-- 2. Select employees with salary > 70000
select * from employees 
where salary > 90000;

-- 3. Count employees by designation
select designation, count(*) as employee_count
from employees
group by designation;

 -- 4. Average salary by designation
 select designation, avg(salary) as avg_salary
 from employees
 group by designation
 order by avg_salary desc;

 -- 5. Top 10 highest paid employees
 select * from employees
 order by salary desc 
 limit 10;

 -- 6. Employees with specific designation
 select * from employees 
 where designation = 'Senior Developer';

-- 7. Salary range analysis
select
min(salary) as min_salary,
max(salary) as max_salary,
avg(salary) as avg_salary
from employees

 -- 8. Employees with names starting with specific letter
 select name,designation from employees
 where name like 'J%';

 -- 9. Update employee salary
 update employees
 set salary = salary * 1.10
 where designation = 'Junior Developer'
 
 -- 10. Employees earning between range
 select name,designation,salary from employees
 where salary between 50000 and 80000;

-- 11. Count total employees
select count(*) as total_employees from employees;

-- 12. Fetch 20 records excluding first 5 rows
select * from employees
limit 20 offset 5

--13. Fetch the second highest salary
select name, designation, salary from employees 
where salary = (
select max(salary)
from employees where salary < 
(select max(salary) from employees)
)

-- OR

select name,designation,salary from employees
order by salary desc
limit 1 offset 1;