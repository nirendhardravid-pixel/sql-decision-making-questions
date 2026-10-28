CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    age INT,
    salary DECIMAL(10,2),
    department VARCHAR(30),
    performance_score INT,
    manager_id INT
);

INSERT INTO employees VALUES
(101, 'Arun', 22, 45000, 'IT', 85, 201),
(102, 'Priya', 25, 65000, 'HR', 90, 202),
(103, 'Karthik', 19, 28000, 'IT', 55, 201),
(104, 'Divya', 30, 50000, 'Finance', 75, NULL),
(105, 'Rahul', 27, 35000, 'IT', 60, 201),
(106, 'Sneha', 24, 75000, 'IT', 95, 202),
(107, 'Vijay', 17, 20000, 'Sales', 40, NULL),
(108, 'Meena', 29, 40000, 'HR', 70, 202),
(109, 'Sanjay', 32, 55000, 'IT', 90, 201),
(110, 'Anu', 21, 25000, 'Finance', 45, NULL);

select * from employees;

if statement:

select emp_id,emp_name,Department,salary,if(salary>40000,"High salary","Low salary") as salary_clarification from employees;


select emp_id,emp_name,Department,if(age>=18,"Eligible","Not Eligible") as Eligibility from employees;

select emp_id,emp_name,Department,salary,
case 
	when salary>60000 then "High Salary"
	when salary between 30000 and 60000 then "Medium salary"
	else "Low Salary"
end as category from employees;

select emp_id,emp_name,Department,
case 
	when performance_score  >=80 then "Excellent"
	when performance_score between 60 and 79 then "Good"
	else "Needs improvement"
end as Employee_performance_status from employees;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    marks INT
);

INSERT INTO students VALUES
(1, 'Arun', 35),
(2, 'Priya', 92),
(3, 'Karthik', 78),
(4, 'Divya', 65),
(5, 'Rahul', 42),
(6, 'Sneha', 88),
(7, 'Vijay', 25),
(8, 'Meena', 50),
(9, 'Sanjay', 75),
(10, 'Anu', 95);

select * from students;

select student_id,student_name,marks,if(marks>=35,"pass","fail") as status from students;

select student_id,student_name,marks,
case
	when marks >=90 then "A"
	when marks between 75 and 89 then "B"
	when marks between 50 and 74 then "C"
	else "Fail"
end as Grade from students;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(30),
    stock_quantity INT,
    price DECIMAL(10,2)
);

INSERT INTO products VALUES
(1, 'Laptop', 'Electronics', 10, 55000),
(2, 'Mouse', 'Electronics', 0, 500),
(3, 'Office Chair', 'Furniture', 15, 4500),
(4, 'Desk', 'Furniture', 5, 8000),
(5, 'Keyboard', 'Electronics', 20, 1200),
(6, 'Monitor', 'Electronics', 0, 12000),
(7, 'Bookshelf', 'Furniture', 8, 6000),
(8, 'Printer', 'Electronics', 4, 15000);

select *from products;


select product_id,product_name,category,if(stock_quantity=0,"Out of stock","Available") as product_Availabilty from products;


CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    order_status VARCHAR(30),
    order_amount DECIMAL(10,2)
);

drop table orders;

INSERT INTO orders VALUES
(1, 'Arun', 'Delivered', 5000),
(2, 'Priya', 'Shipped', 8000),
(3, 'Karthik', 'Pending', 3000),
(4, 'Divya', 'Cancelled', 4500),
(5, 'Rahul', 'Delivered', 12000),
(6, 'Sneha', 'Shipped', 6500),
(7, 'Vijay', 'Pending', 2000),
(8, 'Meena', 'Delivered', 9500);

select *from orders;

CREATE TABLE employee_analysis (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary DECIMAL(10,2),
    performance_score INT,
    experience_years INT,
    attendance_percentage DECIMAL(5,2),
    projects_completed INT,
    overtime_hours INT,
    warnings INT,
    sales_amount DECIMAL(12,2),
    sales_target DECIMAL(12,2),
    manager_id INT
);


INSERT INTO employee_analysis VALUES
(101, 'Arun', 'IT', 75000, 92, 6, 98, 12, 10, 0, 150000, 120000, 201),
(102, 'Priya', 'Sales', 45000, 85, 4, 95, 8, 15, 0, 110000, 100000, 202),
(103, 'Karthik', 'IT', 35000, 55, 1, 80, 3, 25, 2, 50000, 80000, 201),
(104, 'Divya', 'HR', 60000, 78, 5, 90, 7, 8, 1, 0, 0, NULL),
(105, 'Rahul', 'Sales', 50000, 65, 3, 88, 6, 12, 1, 90000, 100000, 202),
(106, 'Sneha', 'IT', 90000, 96, 8, 99, 15, 5, 0, 200000, 150000, 201),
(107, 'Vijay', 'Finance', 28000, 40, 1, 70, 2, 30, 3, 0, 0, NULL),
(108, 'Meena', 'Sales', 65000, 88, 5, 96, 10, 10, 0, 130000, 120000, 202),
(109, 'Sanjay', 'IT', 55000, 72, 4, 85, 6, 20, 1, 100000, 100000, 201),
(110, 'Anu', 'Finance', 40000, 60, 2, 92, 5, 5, 0, 0, 0, 203),
(111, 'Ramesh', 'Sales', 80000, 91, 7, 97, 14, 18, 0, 180000, 150000, 202),
(112, 'Kavya', 'IT', 42000, 82, 3, 94, 9, 12, 0, 95000, 90000, 201),
(113, 'Manoj', 'HR', 32000, 48, 2, 75, 3, 22, 2, 0, 0, NULL),
(114, 'Nisha', 'Finance', 70000, 89, 6, 98, 11, 8, 0, 0, 0, 203),
(115, 'Prakash', 'Sales', 38000, 58, 2, 82, 4, 16, 2, 70000, 90000, 202);

select * from employee_analysis;


SELECT
    emp_id,
    emp_name,
    department,
    salary,
    IF(salary >= 70000, 'High Salary', 'Standard Salary') AS salary_category,
    CASE
        WHEN performance_score >= 90 THEN 'A'
        WHEN performance_score >= 80 THEN 'B'
        WHEN performance_score >= 70 THEN 'C'
        WHEN performance_score >= 60 THEN 'D'
        ELSE 'Fail'
    END AS performance_grade
FROM employee_analysis;

SELECT
    emp_id,
    emp_name,
    department,
    salary,
    IF(salary > 70000, 'High Salary', 'Standard Salary') AS salary_classification
FROM employee_analysis;

select emp_id,emp_name,department,performance_score,
case 
	when performance_score >=90 then "A"
	when performance_score >=80 then "B"
	when performance_score >=70 then "C"
	when performance_score >=60 then "D"
	else "Fail"
end as performance_Grade from employee_analysis;

SELECT
    emp_id,
    emp_name,
    department,
    performance_score,
    attendance_percentage,
    warnings,
    CASE
        WHEN performance_score >= 85
             AND attendance_percentage >= 90
             AND warnings = 0
        THEN 'Eligible'
        ELSE 'Not Eligible'
    END AS Bonus_Eligibility
FROM employee_analysis;


select Emp_id,
       emp_name,
       department,
       experience_years,
       performance_score,
case 
	when experience_years>=5 and performance_score>=85 then "Eligible for Promotion"
	when experience_years>=3 and performance_score>=75 then "Potential candidate"
	else "Not Eligibile"
end as promotion_Eligible from employee_analysis;


select Emp_id,
       emp_name,
       department,
       experience_years,
       salary,
       attendance_percentage,
case 
	when attendance_percentage<75 then "Critical"
	when attendance_percentage between 75 and 85 then "High Risk"
	when attendance_percentage between 85 and 95 then "Moderate"
	else "Low Risk"
end as Attendence_Risk from employee_analysis;

select Emp_id,
       emp_name,
       department,
       warnings,
       attendance_percentage,
case 
	when warnings>=2 or attendance_percentage <75 then "High risk"
	when warnings=1 or attendance_percentage <60 then "medium risk"
	else "Low risk"
end as Employee_Risk_level from employee_analysis;

select Emp_id,
       emp_name,
       department,
       projects_completed,
case 
	when projects_completed >=12 then "outstanding"
	when projects_completed between 8 and 11 then "Good"
	when projects_completed between 5 and 7 then "Average"
	else "Needs Improvement"
end as Project_performance from employee_analysis;


select Emp_id,
       emp_name,
       department,
       overtime_hours,if(overtime_hours>20,"Excessive overtime","Normal overtime") as overtime_classification from employee_analysis;

select Emp_id,
       emp_name,
       department,
       manager_id,if(manager_id is null,"Not Assigned","Manager Assigned") as Manager_Assignment from employee_analysis;

SELECT
    emp_id,
    emp_name,
    department,
    salary,
    IF(salary > 70000, 'High Salary', 'Standard Salary') AS salary_classification,
    CASE
        WHEN projects_completed >= 12 THEN 'Outstanding'
        WHEN projects_completed BETWEEN 8 AND 11 THEN 'Good'
        WHEN projects_completed BETWEEN 5 AND 7 THEN 'Average'
        ELSE 'Needs Improvement'
    END AS project_performance
FROM employee_analysis
ORDER BY performance_score DESC;

SELECT
    emp_id,
    emp_name,
    department,
    performance_score,
    experience_years,
    CASE
        WHEN performance_score >= 90 AND experience_years >= 5
            THEN '20% Increment'
        WHEN performance_score >= 80 AND experience_years >= 3
            THEN '15% Increment'
        WHEN performance_score >= 70
            THEN '10% Increment'
        ELSE 'No Increment'
    END AS decision
FROM employee_analysis;


SELECT
    emp_id,
    emp_name,
    department,
    performance_score,
    attendance_percentage,
    warnings,
case 
	when performance_score <50 or attendance_percentage<75 or warnings>=3 then "Critical_Risk"
	when performance_score <65 or attendance_percentage<85 or warnings>=2 then "high_Risk"
	when performance_score <75 or attendance_percentage<90 or warnings>=1 then "medium_Risk"
	else "low risk"
end as employee_Retention
FROM employee_analysis;


SELECT
    emp_id,
    emp_name,
    department,
    sales_amount,
    sales_target,
    performance_score,
    CASE
        WHEN sales_target = 0 THEN 'Not Applicable'
        WHEN sales_amount >= sales_target * 1.5
             AND performance_score >= 85 THEN 'High Incentive'
        WHEN sales_amount >= sales_target * 1.2
             AND performance_score >= 75 THEN 'Medium Incentive'
        WHEN sales_amount >= sales_target THEN 'Basic Incentive'
        ELSE 'No Incentive'
    END AS incentive_decision
FROM employee_analysis;

    
    

















