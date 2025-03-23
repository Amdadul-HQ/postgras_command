-- CREATE TRIGGER trigger_name
-- BEFORE DELETE
-- ON user
-- FOR EACH ROW
-- EXECUTE FUNCTION function_name();


CREATE TABLE my_users (
    user_name  VARCHAR(50),
    email VARCHAR(100)
);


INSERT INTO my_users(user_name,email) VALUES ('Rimon','rimon@gmail.com'),('Amdadul','amdadul@gmail.com');


CREATE TABLE deleted_user_audit(
    deleted_user_name VARCHAR(50),
    deleted_AT TIMESTAMP
);

-- 
CREATE or REPLACE FUNCTION save_deleted_user()
RETURNS TRIGGER
LANGUAGE PLPGSQL
AS
$$
    BEGIN
        INSERT INTO deleted_user_audit VALUES(OLD.user_name,now());
        RAISE NOTICE 'Deleted User Audit log created';
        RETURN OLD;
    END
$$

CREATE or REPLACE TRIGGER save_deleted_user_trigger
BEFORE DELETE
ON my_users
FOR EACH ROW
EXECUTE FUNCTION save_deleted_user();


SELECT * FROM my_users;

SELECT * FROM deleted_user_audit;


DELETE FROM my_users WHERE user_name = 'Rimon';

-- SELECT * FROM "user";
