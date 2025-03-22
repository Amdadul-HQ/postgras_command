CREATE TABLE "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);

CREATE TABLE "post"(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE
);

ALTER TABLE post ALTER COLUMN user_id SET NOT NULL;

DROP TABLE "user";

DROP TABLE post;

INSERT INTO "user" (username) VALUES('AKASH'),('BATASH'),('SAGOR'),('NODI');

SELECT * FROM "user";

INSERT INTO post (title,user_id) VALUES ('Enjoying a sunny day with AKASH',1),('BATASH just shared an amazing recipe!',2),('Exploring adventures with SAGOR',3),('NODI''s wisdom always leaves me inspired',4);


SELECT * FROM post;

-- Restrict Deletion => ON DELETE RESTRICT / ON DELETE NO ACTION (default)
DELETE FROM "user" WHERE id = 4;


-- Cascading Deletion => ON DELETE CASCADE
-- CREATE TABLE "post"(
--     id SERIAL PRIMARY KEY,
--     title TEXT NOT NULL,
--     user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE
-- );

-- Deletion Constraint on DELETE user

-- Setting Null => ON DELETE SET NULL
-- CREATE TABLE "post"(
--     id SERIAL PRIMARY KEY,
--     title TEXT NOT NULL,
--     user_id INTEGER REFERENCES "user"(id) ON DELETE SET NULL
-- );


-- Set Default Value => ON DELETE SET DEFAULT
-- CREATE TABLE "post"(
--     id SERIAL PRIMARY KEY,
--     title TEXT NOT NULL,
--     user_id INTEGER REFERENCES "user"(id) ON DELETE SET DEFAULT DEFAULT 2
-- );



