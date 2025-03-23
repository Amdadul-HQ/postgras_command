SELECT * FROM employess;

EXPLAIN ANALYSE
SELECT * FROM employess WHERE employee_name = 'Emily Davis';

CREATE INDEX idx_employees_name
ON employess(employee_name);

SHOW data_directory;
