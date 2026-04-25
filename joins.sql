-- INNER JOIN Examples
-- 1. Get employees with their department names
select e.name, e.designation , e.salary, d.department_name
from employees e
inner join departments d
on e.department_id = d.department_id;

-- 2. Get employees in Engineering department only
select e.name, e.designation, d.department_name
from employees e
inner join departments d
on e.department_id = d.department_id
where d.department_name = 'Engineering';

-- 3. Count employees per department
select d.department_name, count(employee_id) as employee_count
from departments d
inner join employees e on d.department_id = e.department_id
group by d.department_name
order by employee_count desc;

-- 4. Find departments with no employees
select d.department_name, d.location
from departments d
left join employees e on d.department_id = e.department_id
where e.employee_id is null

-- 5. Show all employees even if department doesn't exist
select e.name, e.designation, d.department_name 
from employees e
right join departments d on d.department_id = e.department_id;

-- MULTIPLE JOINS
-- 6. Join employees, departments, and projects

select e.name, e.designation, d.department_name, p.project_name, p.status
from employees e
inner join departments d on d.department_id = e.department_id
inner join projects p on p.department_id = e.department_id;
