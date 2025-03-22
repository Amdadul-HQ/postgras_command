CREATE TABLE employess (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
);

CREATE TABLE departments(
    dept_id INT,
    dept_name VARCHAR(50)
);

INSERT INTO employess(emp_id,emp_name,dept_id) VALUES (1,'Jone Doe',101),(2,'Jane Smith',102);

INSERT INTO departments (dept_id,dept_name) VALUES (101,'Human Resources'),(102,'Marketing');


SELECT * FROM employess;

SELECT * FROM departments;

-- CROSS JOIN
SELECT * FROM employess CROSS JOIN departments;

-- NATURAL JOIN
SELECT * FROM employess NATURAL JOIN departments;

DROP TABLE departments;
DROP TABLE employess;


-- Inner Join
SELECT emp_name,dept_name FROM employess JOIN departments ON departments.dept_id = employess.dept_id;