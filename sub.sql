
CREATE TABLE employess (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO employess (employee_name, department_name, salary, hire_date) VALUES
('John Doe', 'HR', 55000.00, '2020-03-15'),
('Jane Smith', 'MARKETING', 62000.00, '2019-07-22'),
('Robert Brown', 'FINANCE', 72000.00, '2018-11-10'),
('Emily Davis', 'IT', 85000.00, '2021-06-30'),
('Michael Wilson', 'SALES', 50000.00, '2022-01-05'),
('Sarah Johnson', 'ENGINEERING', 95000.00, '2017-09-18'),
('David Miller', 'CUSTOMER SUPPORT', 40000.00, '2023-02-14'),
('Laura Moore', 'ADMINISTRATION', 48000.00, '2020-12-11'),
('James Anderson', 'RESEARCH', 88000.00, '2019-04-25'),
('Linda Thomas', 'QUALITY ASSURANCE', 56000.00, '2021-08-07'),
('Christopher Garcia', 'HR', 53000.00, '2023-05-19'),
('Jessica Martinez', 'MARKETING', 60000.00, '2020-09-08'),
('Daniel White', 'FINANCE', 75000.00, '2018-06-21'),
('Patricia Harris', 'IT', 87000.00, '2021-02-17'),
('Mark Martin', 'SALES', 52000.00, '2019-11-12'),
('Elizabeth Jackson', 'ENGINEERING', 99000.00, '2016-07-29'),
('Steven Thompson', 'CUSTOMER SUPPORT', 41000.00, '2023-03-23'),
('Barbara Lewis', 'ADMINISTRATION', 47000.00, '2020-10-30'),
('Matthew Walker', 'RESEARCH', 90000.00, '2019-05-15'),
('Susan Allen', 'QUALITY ASSURANCE', 58000.00, '2021-09-20'),
('Paul Young', 'HR', 57000.00, '2018-04-01'),
('Nancy Hall', 'MARKETING', 63000.00, '2020-07-12'),
('Kevin King', 'FINANCE', 71000.00, '2017-08-30'),
('Karen Scott', 'IT', 86000.00, '2022-06-10'),
('Brian Green', 'SALES', 54000.00, '2021-03-05'),
('Lisa Adams', 'ENGINEERING', 98000.00, '2015-12-22'),
('Donald Nelson', 'CUSTOMER SUPPORT', 42000.00, '2023-07-18'),
('Betty Carter', 'ADMINISTRATION', 49000.00, '2019-01-28'),
('George Mitchell', 'RESEARCH', 89000.00, '2020-11-14'),
('Deborah Perez', 'QUALITY ASSURANCE', 59000.00, '2021-10-25');

SELECT * FROM employess;

SELECT * FROM employess WHERE salary > (SELECT max(salary) FROM employess WHERE department_name = 'HR');

SELECT department_name,count(*),sum(salary) FROM employess GROUP BY department_name;

SELECT * FROM (SELECT department_name,sum(salary) FROM employess GROUP BY department_name) as sum_dept_salary;


