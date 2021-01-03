--1. How many people work in the Sales department?

SELECT COUNT(e.id)
FROM 
employee e
JOIN
department d
ON
e.department = d.id
WHERE d.dept_name = 'Sales';

--2. List the names of all employees assigned to the 'Plan Christmas party' project.

SELECT
p.project_name,
e.emp_name
FROM
employee e
JOIN
employee_project ep
ON
e.id = ep.emp_id
JOIN
project p
ON ep.project_id = p.id
WHERE p.project_name = 'Plan Christmas party';

--3. List the names of employees from the Warehouse department 
--that are assigned to the 'Watch paint dry' project.

SELECT
d.dept_name as Department,
e.emp_name as Full_Name,
p.project_name as Project
FROM
department d
JOIN
employee e
ON
d.id = e.department
JOIN
employee_project ep
ON
e.id = ep.emp_id
JOIN
project p
ON p.id = ep.project_id
WHERE 
p.project_name = 'Watch paint dry' AND
d.dept_name = 'Warehouse';

--4. Which projects are the Sales department employees assigned to?

SELECT
e.emp_name,
d.dept_name,
p.project_name
FROM
project p
JOIN
employee_project ep
ON
p.id = ep.project_id
JOIN
employee e
ON
ep.emp_id = e.id
JOIN
department d
ON
e.department = d.id
WHERE d.dept_name = 'Sales';


--5. List only the managers that are assigned to the 'Watch paint dry' project
SELECT
d.dept_name as Department,
e.emp_name as Department_Manager,
p.project_name
FROM
project p
JOIN
employee_project ep
ON
p.id = ep.project_id
JOIN
employee e
ON
ep.emp_id = e.id
RIGHT JOIN
department d
ON
e.id = d.manager;
