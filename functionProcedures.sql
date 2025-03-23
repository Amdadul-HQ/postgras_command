SELECT * FROM employess;
CREATE FUNCTION emp_count()
RETURNS INT
LANGUAGE SQL
AS
$$
    SELECT count(*) FROM employess;
$$;

CREATE or REPLACE FUNCTION delete_emp()
RETURNS void
LANGUAGE SQL
AS
$$
    DELETE FROM employess WHERE employee_id = 30;
$$;

CREATE or REPLACE FUNCTION delete_emp_by_id(p_emp_id INT)
RETURNS void
LANGUAGE SQL
AS
$$
    DELETE FROM employess WHERE employee_id = p_emp_id;
$$;

SELECT delete_emp_by_id(1);

SELECT delete_emp();

SELECT emp_count();

SELECT * FROM employess;