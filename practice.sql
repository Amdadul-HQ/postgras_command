CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE employess (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT REFERENCES departments(department_id),
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO departments (department_name) VALUES
 ('HR'),
 ('MARKETING'),
 ('FINANCE'),
 ('IT'),
 ('SALES'),
 ('ENGINEERING'),
 ('CUSTOMER SUPPORT'),
 ('ADMINISTRATION'),
 ('RESEARCH'),
 ('QUALITY ASSURANCE');

 SELECT * FROM departments;

INSERT INTO employess (employee_name, department_id, salary, hire_date) VALUES
('John Doe', 1, 50000.00, '2023-01-15'),
('Jane Smith', 2, 60000.50, '2022-11-20'),
('Michael Johnson', 3, 75000.75, '2021-05-10'),
('Emily Davis', 1, 48000.25, '2023-03-05'),
('Robert Brown', 2, 52000.00, '2020-07-18'),
('Laura Wilson', 3, 70000.00, '2019-09-25'),
('David Martinez', 1, 55000.00, '2022-06-12'),
('Sarah White', 2, 65000.80, '2021-02-28'),
('James Anderson', 3, 72000.40, '2023-08-30'),
('Emma Thomas', 1, 49000.90, '2022-10-10');

SELECT * FROM employess;


-- innter join to retrieve employee and department information
SELECT employee_name, department_name,salary,hire_date FROM employess 
JOIN departments ON departments.department_id = employess.department_id;

SELECT * FROM employess 
JOIN departments USING(department_id);

-- Department name with avarage salary
SELECT department_name, round(avg(salary)) FROM employess 
JOIN departments USING(department_id)
GROUP BY department_name;


-- Count Employees in each department
SELECT department_name, count(*) FROM employess 
FULL JOIN departments USING(department_id)
GROUP BY department_name;

-- Find the department name with hight salary
SELECT department_name,round(avg(salary)) as avg_salary FROM employess 
JOIN departments USING(department_id)
GROUP BY department_name
ORDER BY avg_salary DESC
LIMIT 1;


-- count employees hired each year
SELECT extract(YEAR FROM hire_date) as hire_year,count(*) FROM employess
GROUP BY hire_year;

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2)
);

INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(110, '2022-04-10', 1000.99);

SELECT * FROM orders;

-- Finde customer who have place more the w orders and calculate the total amoun spent by each of these customers;
SELECT customer_id,count(*),sum(total_amount) as total_spand FROM orders GROUP BY customer_id HAVING count(order_id)>2;


-- Find the total amount of orders placed each month in the year 2024
SELECT extract(MONTH FROM order_date) as month,sum(total_amount) as total_revenue FROM orders WHERE extract(YEAR FROM order_date) = 2024
GROUP BY MONTH;


