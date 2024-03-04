-- Active: 1709469253386@@127.0.0.1@5432@postgres

CREATE TABLE "user"(
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL
);


DROP TABLE "user";


CREATE TABLE post(
    post_id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(user_id)
);

INSERT INTO "user"(username) VALUES('Akash'), ('Nikhil'), ('Vishal');

SELECT * FROM "user";

INSERT INTO post(title, user_id) VALUES('Post 1', 1), ('Post 2', 2), ('Post 3', 3);


SELECT * FROM post;


ALTER TABLE post alter COLUMN user_id set NOT NULL;

DROP TABLE post;


CREATE TABLE post (
    post_id SERIAL PRIMARY KEY, title TEXT NOT NULL, user_id INTEGER REFERENCES "user" (user_id) ON DELETE CASCADE
);

DELETE FROM "user" WHERE user_id = 2;


CREATE TABLE post (
    post_id SERIAL PRIMARY KEY, title TEXT NOT NULL, user_id INTEGER REFERENCES "user" (user_id) ON DELETE SET NULL
);