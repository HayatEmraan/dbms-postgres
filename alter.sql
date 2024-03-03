-- Active: 1709469253386@@127.0.0.1@5432@postgres

SELECT * FROM person2;

ALTER TABLE person2 ADD COLUMN email VARCHAR(255) DEFAULT 'default@gmail.com' NOT NULL;

INSERT INTO person2 VALUES(2, 'something', 19);

ALTER TABLE person2 DROP COLUMN email;

ALTER TABLE person2 RENAME COLUMN age to user_age;

ALTER TABLE person2 alter COLUMN user_name type VARCHAR(255);


ALTER TABLE person2 alter COLUMN user_age set not NULL;


ALTER TABLE person2 alter COLUMN user_age DROP not NULL;


ALTER TABLE person2 ADD constraint unique_person2_user_age UNIQUE(user_age);


ALTER TABLE person2 DROP constraint unique_person2_user_age;