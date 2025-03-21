SELECT * FROM person;

ALTER TABLE person ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;
-- inster a value into table
INSERT INTO person VALUES(7,'shakil',45,'rimon@gmail.com');

-- Add Column
ALTER TABLE person DROP COLUMN email;

-- Rename column
ALTER TABLE person RENAME COLUMN age to user_age;
-- Column type or const change
ALTER TABLE person ALTER COLUMN user_name TYPE VARCHAR(50);

-- Column set cont
ALTER TABLE person ALTER COLUMN user_age SET NOT NULL;

-- remove const
ALTER TABLE person ALTER COLUMN user_age DROP NOT NULL;

-- set unique
ALTER TABLE person ADD CONSTRAINT unique_person_user_age UNIQUE(user_age);

-- Drop unique
ALTER TABLE person DROP CONSTRAINT unique_person_user_age;

-- Removeing table all data
TRUNCATE TABLE person;