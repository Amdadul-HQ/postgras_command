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