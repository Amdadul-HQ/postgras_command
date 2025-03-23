SELECT * FROM employess;
CREATE FUNCTION emp_count()
RETURNS INT
LANGUAGE SQL
AS
$$
    SELECT count(*) FROM employess;
$$;


SELECT emp_count();