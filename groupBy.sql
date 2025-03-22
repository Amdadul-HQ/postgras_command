SELECT * FROM students;

SELECT extract(year from dob) as birth_year,count(*)
    FROM students 
    GROUP BY birth_year;