											-- INTODUCTION --
-- This project focuses on managing and analyzing employee data using SQL. 
-- It involves creating tables, inserting records, updating data, 
-- and writing various queries to extract meaningful insights from the data.

DELETE FROM employees;

CREATE DATABASE IF NOT EXISTS office;
USE office;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  age INT DEFAULT 0,
  gender VARCHAR(20),
  department VARCHAR(20),
  salary NUMERIC(10,2),
  joining_date DATE,
  performance_score DECIMAL(3,1), 
  experience INT,
  status VARCHAR(20),
  location VARCHAR(50),
  session VARCHAR(20)
);

INSERT INTO employees (id, name, age, gender, department, salary, joining_date, performance_score, experience, status, location, session)
VALUES
(1, 'Kimberly Dennis', 51, 'Other', 'Sales', 9583.21, '2021-03-15', NULL, 3, 'Inactive', 'New York', 'Morning'),
(2, 'Edward Mcdonald', 48, 'Female', 'Sales', 8853.80, '2019-01-30', 1.0, 10, 'Active', 'Chicago', 'Evening'),
(3, 'Francisco Sanchez', 56, 'Other', 'IT', 5581.75, '2022-03-22', 4.0, 2, 'Inactive', 'Los Angeles', 'Evening'),
(4, 'Andrea Francis', 56, 'Male', 'Finance', 6879.03, '2023-12-29', 2.0, 1, 'Active', 'Phoenix', 'Evening'),
(5, 'Cynthia Lewis', 57, 'Other', 'HR', 4554.92, '2023-01-29', 5.0, 10, 'Inactive', 'Houston', 'Evening'),
(6, 'Bianca Porter', 26, 'Other', 'IT', 5331.11, '2015-05-02', 5.0, 5, 'Active', 'Los Angeles', 'Morning'),
(7, 'Shannon Martin', 18, 'Male', 'Finance', 6744.99, '2023-01-30', NULL, 1, 'Inactive', 'Houston', 'Night'),
(8, 'Jennifer Fleming', 30, 'Other', 'Finance', 4247.72, '2016-08-28', 2.0, 5, 'Inactive', 'Houston', 'Night'),
(9, 'Sherry Joseph', 47, 'Female', 'Marketing', 5394.77, '2025-01-13', 4.0, 2, 'Active', 'New York', 'Morning'),
(10, 'Alexander Roberts', 26, 'Male', 'Marketing', 3700.56, '2016-04-27', 5.0, 2, 'Inactive', 'Chicago', 'Morning'),
(11, 'Beth Santana', 33, 'Male', 'Sales', 3396.62, '2019-07-22', 2.0, 7, 'Active', 'New York', 'Evening'),
(12, 'Michael Butler', 61, 'Other', 'Finance', 9968.30, '2025-02-27', 3.0, 7, 'Active', 'Los Angeles', 'Night'),
(13, 'Alison Coleman', 57, 'Female', 'IT', 8422.17, '2024-02-19', 1.0, 3, 'Active', 'Chicago', 'Evening'),
(14, 'Mary Watkins', 42, 'Male', 'HR', 2472.59, '2022-12-25', 1.0, 5, 'Inactive', 'Los Angeles', 'Evening'),
(15, 'Erika Schwartz', 18, 'Female', 'IT', 8878.82, '2019-11-10', 4.0, 1, 'Active', 'Los Angeles', 'Morning'),
(16, "Dale Martinez", 34, "Female", "IT", 3992.58, "2017-03-18", null, 10, "Active", "New York", "Night"),
(17, "Laura Kim", 29, "Female", "IT", 4762.40, "2015-11-20", 3.0, 7, "Active", "Chicago", "Evening"),
(18, "David Owens", 64, "Male", "HR", 5421.92, "2021-12-18", null, 1, "Inactive", "New York", "Night"),
(19, "Cassidy Mcfarland", 34, "Male", "IT", 8131.13, "2017-06-28", 2.0, 7, "Active", "Phoenix", "Morning"),
(20, "Victoria Harmon", 30, "Male", "Sales", 3723.96, "2020-09-24", null, 5, "Inactive", "New York", "Morning"),
(21, "Julia Ross", 24, "Male", "Marketing", 4293.61, "2024-06-28", 5.0, 7, "Active", "Chicago", "Evening"),
(22, "Lauren Kirk", 61, "Female", "Finance", 7978.21, "2018-07-31", 5.0, 7, "Active", "Los Angeles", "Morning"),
(23, "Mark Foster", 55, "Other", "Sales", 9779.27, "2022-09-07", 2.0, 5, "Inactive", "Houston", "Evening"),
(24, "Catherine Valenzuela", 31, "Male", "Marketing", 9361.10, "2021-08-05", 1.0, 3, "Inactive", "New York", "Night"),
(25, "Angela Saunders", 54, "Male", "Finance", 7276.85, "2019-02-07", 4.0, 1, "Active", "Phoenix", "Night"),
(26, "Beth Davenport", 54, "Other", "Marketing", 2868.82, "2025-01-12", 4.0, 7, "Active", "Houston", "Evening"),
(27, "Matthew Jones", 27, "Male", "Sales", 5104.06, "2024-07-10", 5.0, 10, "Inactive", "Los Angeles", "Night"),
(28, "Alfred Griffin", 58, "Female", "Finance", 6956.74, "2020-10-29", 1.0, 1, "Active", "Los Angeles", "Morning"),
(29, "James Richardson", 38, "Male", "Finance", 5110.12, "2017-07-25", 4.0, 10, "Inactive", "Houston", "Morning"),
(30, "Bryan Harris", 44, "Male", "Marketing", 4013.05, "2015-06-17", 5.0, 10, "Active", "Phoenix", "Evening"),
(31, "Luis Hall", 45, "Male", "IT", 7113.92, "2016-04-01", 4.0, 2, "Inactive", "Chicago", "Morning"),
(32, "Frank Jordan", 25, "Female", "Marketing", 9413.77, "2018-08-29", null, 3, "Active", "Phoenix", "Evening"),
(33, "Sergio Frost", 24, "Female", "HR", 4086.59, "2018-07-28", null, 5, "Active", "Chicago", "Evening"),
(34, "Dana Johnson", 28, "Male", "Finance", 5487.27, "2022-06-06", 1.0, 2, "Active", "Phoenix", "Night"),
(35, "Karen Edwards", 30, "Female", "Marketing", 6320.97, "2018-07-11", 4.0, 1, "Active", "Houston", "Morning"),
(36, "Eric Beck", 62, "Female", "IT", 6434.59, "2024-07-13", 2.0, 1, "Inactive", "Phoenix", "Morning"),
(37, "Jessica Martin", 19, "Other", "Sales", 2151.40, "2020-11-17", 2.0, 7, "Inactive", "Phoenix", "Morning"),
(38, "James Salazar", 33, "Other", "HR", 5077.14, "2018-06-11", 1.0, 3, "Active", "New York", "Evening"),
(39, "Phillip Little", 36, "Female", "HR", 6198.13, "2022-11-12", 3.0, 5, "Active", "Los Angeles", "Morning"),
(40, "Beth Rosario", 62, "Male", "IT", 8470.11, "2020-02-09", 1.0, 10, "Inactive", "Los Angeles", "Morning"),
(41, "Jonathan Hopkins", 36, "Other", "Sales", 6414.78, "2024-02-16", 5.0, 2, "Inactive", "Chicago", "Night"),
(42, "Karen Quinn", 30, "Male", "IT", 7255.72, "2023-09-29", null, 2, "Active", "Phoenix", "Evening"),
(43, "John Estrada", 62, "Female", "Sales", 8426.85, "2023-07-14", 2.0, 10, "Active", "Phoenix", "Morning"),
(44, "Victor Richardson", 45, "Female", "Finance", 3068.50, "2018-04-05", null, 3, "Inactive", "Los Angeles", "Evening"),
(45, "Wendy Stokes", 39, "Male", "HR", 9372.45, "2019-08-07", 4.0, 10, "Active", "Los Angeles", "Morning"),
(46, "Dawn Brooks", 45, "Other", "Finance", 4766.17, "2016-01-27", 5.0, 7, "Inactive", "Houston", "Night"),
(47, "Stephen Miles", 20, "Male", "Finance", 2599.32, "2025-04-02", 1.0, 1, "Inactive", "New York", "Night"),
(48, "David Myers", 33, "Female", "Finance", 2749.14, "2018-09-06", null, 3, "Active", "Houston", "Morning"),
(49, "Ariel Willis", 20, "Female", "Sales", 3988.42, "2018-09-10", 1.0, 5, "Active", "Phoenix", "Night"),
(50, "Kristin Scott", 54, "Female", "Finance", 6000.89, "2018-01-14", 1.0, 3, "Active", "Chicago", "Morning"),
(51, "Ryan Williams", 46, "Other", "IT", 6610.31, "2020-06-15", 4.0, 5, "Inactive", "New York", "Morning"),
(52, "Robert Hopkins", 37, "Other", "IT", 7473.74, "2015-10-26", 1.0, 5, "Active", "Chicago", "Night"),
(53, "Joshua Larson", 37, "Male", "Sales", 2857.56, "2016-06-05", null, 7, "Inactive", "Houston", "Night"),
(54, "Perry James", 26, "Other", "IT", 7607.83, "2021-03-22", 2.0, 2, "Inactive", "Chicago", "Evening"),
(55, "Tiffany Cole", 63, "Other", "Finance", 5266.23, "2016-05-05", 2.0, 3, "Active", "Phoenix", "Night"),
(56, "Mark Sanchez", 41, "Female", "Sales", 8247.02, "2018-05-23", 1.0, 2, "Inactive", "Houston", "Morning"),
(57, "Teresa Fitzpatrick", 45, "Female", "Finance", 7062.59, "2015-05-30", null, 7, "Inactive", "Phoenix", "Morning"),
(58, "Mark Harrell", 31, "Female", "HR", 7151.82, "2017-01-26", 4.0, 2, "Active", "Houston", "Night"),
(59, "Mary Hicks", 39, "Male", "HR", 9818.07, "2023-10-14", 1.0, 3, "Inactive", "Phoenix", "Morning"),
(60, "David Cortez", 38, "Other", "Marketing", 3929.99, "2018-04-13", 4.0, 1, "Inactive", "Los Angeles", "Evening"),
(61, "Jessica Robbins", 38, "Female", "IT", 4698.76, "2018-02-14", 1.0, 3, "Active", "Chicago", "Night"),
(62, "Juan Brady", 32, "Female", "IT", 4556.90, "2022-05-02", 1.0, 5, "Inactive", "Phoenix", "Evening"),
(63, "Diane Hill", 48, "Female", "Finance", 4901.75, "2023-06-19", 1.0, 10, "Active", "Houston", "Evening"),
(64, "Mary Anderson", 32, "Other", "Marketing", 4587.54, "2023-05-15", 2.0, 1, "Active", "Los Angeles", "Morning"),
(65, "Julie Jackson", 23, "Other", "Marketing", 7747.49, "2019-02-12", 2.0, 2, "Inactive", "Houston", "Night"),
(66, "Richard Lewis", 51, "Female", "Sales", 5070.57, "2021-08-25", 3.0, 10, "Inactive", "Chicago", "Night"),
(67, "Barbara Chavez", 25, "Female", "HR", 3978.56, "2020-08-09", 3.0, 3, "Inactive", "Los Angeles", "Morning"),
(68, "Christopher Beltran", 25, "Other", "HR", 2611.56, "2022-01-11", 3.0, 7, "Active", "New York", "Evening"),
(69, "Rachel Beck", 51, "Male", "Finance", 3207.08, "2015-09-10", 1.0, 10, "Inactive", "Houston", "Night"),
(70, "William Johnson", 22, "Other", "HR", 7521.95, "2023-04-28", null, 3, "Inactive", "Los Angeles", "Evening"),
(71, "Stephanie Harris", 31, "Female", "Sales", 5356.54, "2016-03-27", 2.0, 10, "Active", "New York", "Night"),
(72, "Thomas Welch", 60, "Male", "Finance", 7944.06, "2024-08-13", 2.0, 2, "Active", "Los Angeles", "Evening"),
(73, "Julian Boyd", 47, "Other", "Finance", 3346.11, "2022-12-19", 2.0, 5, "Active", "Chicago", "Morning"),
(74, "Angela Jackson", 63, "Female", "HR", 4497.70, "2024-01-11", 1.0, 3, "Inactive", "Phoenix", "Night"),
(75, "Cassandra Howell", 48, "Other", "Sales", 9194.49, "2015-12-17", 1.0, 3, "Inactive", "Chicago", "Morning");

select * from employees;

                                   -- SELECT & WHERE --
                                   
-- 1.Select all columns for employees from the 'IT' department.
select * from employees where department="IT";

-- 2. Retrieve the names and salaries of employees whose salary is greater than 8000.
select name , salary from employees where salary>8000;

-- 3.Show employees who joined after '2020-01-01'.
select * from employees where joining_date>'2020-01-01';

-- 4. List employees who are either in the 'HR' or 'Finance' department.
select * from employees where department="IT" or department="Finance";

-- 5. Find employees whose performance score is NULL.
select * from employees where performance_score is null;

-- 6. List all 'Inactive' employees who are located in 'Los Angeles'.
select * from employees where location="Los Angeles";

                         --    Aggregate Functions & GROUP BY --
                         
-- 7. What is the average salary of employees in each department?
select  avg(salary) as avg_salary from employees;

-- 8. Count how many employees work in each location.
select location ,count(*) as location_count from employees group by location;

-- 9. What is the highest and lowest salary in the 'Sales' department?
select min(salary) as lowest_salary , max(salary) as highest_salary from employees where department="Sales";

-- 10. Calculate total salary paid to 'Active' employees.
select department, sum(salary) as sum_of_salary from employees where status = "active" group by department;


                                   -- ORDER BY & LIMIT --
-- 11. Show top 5 highest-paid employees.
select salary as top_salaries from employees order by salary desc limit 5;

-- 12. List employees sorted by joining date, newest first.
select joining_date as newest_joining from employees order by joining_date desc;

-- 13. Get the names and departments of the 10 youngest employees.
select age as youngest_employees from employees order by age asc limit 10;

							-- ALTER & DISTINCT --
                            
-- 13. Alter the main table to add a new column email.
alter table employees add column email varchar(20);

-- 14. List all unique departments in the company.
select distinct department as unique_departments from employees;

-- 15. Show the unique combinations of department and location across all employees.
select distinct department, location from employees;

                      -- IN/NOT IN & LIKE --
                      
-- 16. List all employees whose name starts with 'J'.
select * from employees where name like "j%";

-- 17. Find employees not in 'Morning' or 'Evening' sessions.
select * from employees where session not in ('Morning','Evening');

-- 18. Show employees whose location is in ('New York', 'Phoenix') and are 'Active'.
select * from employees where location in ('New York', 'Phoenix') and status="Active";

                        -- Subqueries --
                        
-- 19.Find employees whose salary is above the average salary of all employees.
select * from employees where salary>(select avg(salary) from employees);

-- 20. Get employees who have the same experience as the most experienced employee.
select * from employees where experience = (select max(experience) from employees);

                        --  CASE & IF -- 
-- 21. Write a query that adds a column 'Seniority' as 'Junior', 'Mid', or 'Senior' based on experience:
-- Junior: <= 2 years , Mid: 3–6 years , Senior: > 6 years

alter table employees add column Seniority varchar(20);
select * from employees;

select name , exprience , if(experience<=2 , "Junior" , if(experience>=3 , "Mid", if("experience" >6 , "Junior" ,  " "))) as emp_exp from employees;

-- 22. Use CASE to label salary ranges:
-- <4000: 'Low' , 4000–8000: 'Medium' , 8000: 'High'

select name , salary,
case
when salary<4000  then "Low"
when salary>=4000 and salary<=8000 then "Medium"
else "High" end salary_range from employees; 

                                  -- HAVING & COUNT --
                                  
-- 23. Find departments where average salary is more than 7000.
select department , avg(salary) as high_salary from employees group by department having avg(salary)>7000;

-- 24. Show locations having more than 5 employees.
select location, count(*) as employee_count from employees group by location having count(*)>5;

                                --  UPDATE & DELETE --
                                
set sql_safe_updates=0;

-- 25. Update the status of all employees with experience greater than 7 to "Retired".
 update employees set status = "Retired" where experience>7;

-- 26. Delete all employees whose salary is below 3000.
delete from employees where salary<3000;

--  27. Update performance score to 3.0 where it is currently NULL.
update employees set performance_score = 3.0 where performance_score is null;
select * from employees;

                                             -- Joins --
			               -- (Assume you have  bonus table for practice)
USE office;
CREATE TABLE bonus (
    employee_id INT ,
    name VARCHAR(100),
    bonus_amount DECIMAL(10,2),
    department VARCHAR(50),
    bonus_date DATE
);

INSERT INTO bonus (employee_id, name, bonus_amount, department, bonus_date)
VALUES
( 16, "Dale Martinez", 500.00, "IT", "2024-12-15"),
( 19, "Cassidy Mcfarland", 750.00, "IT", "2024-12-20"),
( 22, "Lauren Kirk", 600.00, "Finance", "2024-11-10"),
( 30, "Bryan Harris", 850.00, "Marketing", "2024-10-05"),
( 50, "Kristin Scott", 300.00, "Finance", "2024-09-30"),
( 71, "Stephanie Harris", 950.00, "Sales", "2025-01-10");

select * from bonus;

-- 28. Show all employees who received a bonus, along with their department, bonus amount, and bonus date.
select employees.name, employees.department, bonus.bonus_amount, bonus.bonus_date from employees inner join bonus on employees.id = bonus.employee_id;

-- 29.  List employees who didn't receive any bonus.
select employees.id, employees.name, employees.department from employees left join bonus on employees.id = bonus.employee_id where Bonus.employee_id is null;

-- 30.  For each department, show employee names and bonus amounts, but only for bonuses greater than 600.
select employees.name, employees.department, bonus.bonus_amount from employees inner join bonus on employees.id = bonus.employee_id where bonus_amount>600;



                                                  -- LEARNINGS --
-- Practiced creating and altering SQL tables
-- Learned how to use GROUP BY, HAVING, CASE, JOIN, and UPDATE
-- Understood real-world usage like filtering data and working with NULLs
-- Created a bonus table and joined it with the employee table to find relationships

												 -- CONCLUSION --
                                                 
-- This project helped me understand how SQL can be used to manage and analyze employee data effectively. 
-- From data creation to updates and complex joins, I practiced a wide range of SQL queries.
 -- The project shows how structured data can provide valuable insights when queried correctly.

