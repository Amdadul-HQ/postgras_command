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


CREATE PROCEDURE remove_emp_var()
LANGUAGE plpgsql
AS $$
DECLARE
test_var INT;
BEGIN
    SELECT employee_id INTO test_var FROM employess WHERE employee_id = 25;
    DELETE FROM employess WHERE employee_id = test_var;
END;
$$;

call remove_emp_var();


CREATE PROCEDURE remove_emp_var_by_id(p_emp_id INT)
LANGUAGE plpgsql
AS $$
DECLARE
test_var INT;
BEGIN
    SELECT employee_id INTO test_var FROM employess WHERE employee_id = p_emp_id;
    DELETE FROM employess WHERE employee_id = test_var;
    RAISE NOTICE 'Employee Remove Successfully!';
END;
$$;

call remove_emp_var_by_id(2);