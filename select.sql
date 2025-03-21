CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

-- Insert Value
INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) 
VALUES 
('John', 'Doe', 20, 'A', 'Computer Science', 'john.doe@example.com', '2004-05-12', 'O+', 'USA'),
('Emma', 'Smith', 22, 'B', 'Mechanical Engineering', 'emma.smith@example.com', '2002-08-25', 'A-', 'UK'),
('Liam', 'Johnson', 19, 'A', 'Electrical Engineering', 'liam.johnson@example.com', '2005-02-14', 'B+', 'Canada'),
('Sophia', 'Brown', 21, 'C', 'Business Administration', 'sophia.brown@example.com', '2003-07-30', 'AB-', 'Australia'),
('Noah', 'Wilson', 23, 'B', 'Data Science', 'noah.wilson@example.com', '2001-11-18', 'O-', 'Germany'),
('Ava', 'Taylor', 20, 'A', 'Biotechnology', 'ava.taylor@example.com', '2004-04-22', 'A+', 'France'),
('James', 'Anderson', 22, 'B', 'Civil Engineering', 'james.anderson@example.com', '2002-10-10', 'B-', 'India'),
('Mia', 'Martinez', 21, 'C', 'Psychology', 'mia.martinez@example.com', '2003-06-05', 'AB+', 'Spain'),
('William', 'Thomas', 19, 'A', 'Physics', 'william.thomas@example.com', '2005-09-15', 'O+', 'Japan'),
('Olivia', 'Garcia', 22, 'B', 'Mathematics', 'olivia.garcia@example.com', '2002-03-08', 'A-', 'Brazil');

SELECT * FROM students;

-- single column values
SELECT email FROM students;

-- Rename the column name as get all data
SELECT email as "Student Email" FROM students;


-- Data sorting
SELECT * FROM students ORDER BY first_name ASC;

-- sorting by age
SELECT * FROM students ORDER BY age ASC;


-- soring by cuntry
SELECT country FROM students ORDER BY country ASC;

SELECT DISTINCT blood_group FROM students;

-- Data sorting by value
SELECT * FROM students country WHERE country ='USA';

SELECT * FROM students grade WHERE grade = 'A' AND course = 'Physics';

SELECT * FROM students WHERE blood_group = 'A+';

SELECT * FROM students WHERE( country = 'USA' OR country = 'India') AND age >= 21;

SELECT * FROM students WHERE age > 20 AND course = '';

-- capitalize column data
SELECT upper(first_name) as first_name_in_upper_case, * FROM students;

SELECT * FROM students WHERE email IS NULL;

SELECT email FROM students;

SELECT COALESCE(email,'Email not provided') as Email FROM students;